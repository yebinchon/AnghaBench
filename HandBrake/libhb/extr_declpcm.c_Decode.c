
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_9__ {int nsamples; int nchannels; int alloc_size; int nchunks; int sample_size; int* frame; scalar_t__ next_pts; scalar_t__ duration; int scr_sequence; scalar_t__ data; int resample; int samplerate; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_10__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ duration; scalar_t__ stop; int scr_sequence; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 TYPE_4__* hb_audio_resample (int ,int const**,int) ;
 int hb_audio_resample_set_channel_layout (int ,int ) ;
 int hb_audio_resample_set_sample_rate (int ,int ) ;
 scalar_t__ hb_audio_resample_update (int ) ;
 int hb_log (char*) ;
 int * hdr2layout ;
 scalar_t__ realloc (scalar_t__,int) ;

__attribute__((used)) static hb_buffer_t *Decode( hb_work_object_t *w )
{
    hb_work_private_t *pv = w->private_data;
    hb_buffer_t *out;

    if (pv->nsamples == 0)
        return ((void*)0);

    int size = pv->nsamples * pv->nchannels * sizeof( float );
    if (pv->alloc_size != size)
    {
        pv->data = realloc( pv->data, size );
        pv->alloc_size = size;
    }

    float *odat = (float *)pv->data;
    int count = pv->nchunks / pv->nchannels;

    switch( pv->sample_size )
    {
        case 16:
        {
            uint8_t *frm = pv->frame;
            while ( count-- )
            {
                int cc;
                for( cc = 0; cc < pv->nchannels; cc++ )
                {



                    *odat++ = (float)( ( (int)( frm[0] << 24 ) >> 16 ) |
                                       frm[1] ) / 32768.0;
                    frm += 2;
                }
            }
        } break;
        case 20:
        {





            uint8_t *frm = pv->frame;
            while ( count-- )
            {
                int gg, cc;
                int shift = 4;
                uint8_t *lsb = frm + 4 * pv->nchannels;
                for( gg = 0; gg < 2; gg++ )
                {
                    for( cc = 0; cc < pv->nchannels; cc++ )
                    {



                        *odat = (float)( ( (int)( frm[0] << 24 ) >> 12 ) |
                                         ( frm[1] << 4 ) |
                                         ( ( ( lsb[0] >> shift ) & 0x0f ) ) ) /
                                       (16. * 32768.0);
                        odat++;
                        lsb += !shift;
                        shift ^= 4;
                        frm += 2;
                    }
                }
                frm = lsb;
            }
        } break;
        case 24:
        {





            uint8_t *frm = pv->frame;
            while ( count-- )
            {
                int gg, cc;
                uint8_t *lsb = frm + 4 * pv->nchannels;
                for( gg = 0; gg < 2; gg++ )
                {
                    for( cc = 0; cc < pv->nchannels; cc++ )
                    {



                        *odat++ = (float)( ( (int)( frm[0] << 24 ) >> 8 ) |
                                           ( frm[1] << 8 ) | lsb[0] ) /
                                  (256. * 32768.0);
                        frm += 2;
                        lsb++;
                    }
                }
                frm = lsb;
            }
        } break;
    }

    hb_audio_resample_set_channel_layout(pv->resample,
                                         hdr2layout[pv->nchannels - 1]);
    hb_audio_resample_set_sample_rate(pv->resample,
                                      pv->samplerate);
    if (hb_audio_resample_update(pv->resample))
    {
        hb_log("declpcm: hb_audio_resample_update() failed");
        return ((void*)0);
    }
    out = hb_audio_resample(pv->resample, (const uint8_t **)&pv->data,
                            pv->nsamples);

    if (out != ((void*)0))
    {
        out->s.start = pv->next_pts;
        out->s.duration = pv->duration;
        if (pv->next_pts != (int64_t)AV_NOPTS_VALUE)
        {
            pv->next_pts += pv->duration;
            out->s.stop = pv->next_pts;
        }
        out->s.scr_sequence = pv->scr_sequence;
    }
    return out;
}
