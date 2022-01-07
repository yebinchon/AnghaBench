
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int offset; int nchannels; int samplerate; int sample_size; int duration; int nchunks; int nsamples; int size; scalar_t__ next_pts; int scr_sequence; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_9__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_7__ {scalar_t__ start; int scr_sequence; } ;
struct TYPE_10__ {int* data; int size; TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_DVD_READ_BUFFER_SIZE ;
 int hb_log (char*,int) ;
 int* hdr2samplerate ;
 int* hdr2samplesize ;

__attribute__((used)) static void lpcmInfo( hb_work_object_t *w, hb_buffer_t *in )
{
    hb_work_private_t * pv = w->private_data;
    pv->offset = ( ( in->data[1] << 8 ) | in->data[2] ) + 2;
    if ( pv->offset >= HB_DVD_READ_BUFFER_SIZE )
    {
        hb_log( "declpcm: illegal frame offset %d", pv->offset );
        pv->offset = 2;
    }
    pv->nchannels = ( in->data[4] & 7 ) + 1;
    pv->samplerate = hdr2samplerate[ ( in->data[4] >> 4 ) & 0x3 ];
    pv->sample_size = hdr2samplesize[in->data[4] >> 6];



    int chunk_size = pv->sample_size / 8;
    int samples_per_chunk = 1;

    switch( pv->sample_size )
    {
        case 20:
            chunk_size = 5;
            samples_per_chunk = 2;
            break;
        case 24:
            chunk_size = 6;
            samples_per_chunk = 2;
            break;
    }
    int chunks = ( in->size - pv->offset ) / chunk_size;
    int samples = chunks * samples_per_chunk;


    int frames = ( 90000 * samples / ( pv->samplerate * pv->nchannels ) +
                   149 ) / 150;

    pv->duration = frames * 150;
    pv->nchunks = ( pv->duration * pv->nchannels * pv->samplerate +
                    samples_per_chunk - 1 ) / ( 90000 * samples_per_chunk );
    pv->nsamples = ( pv->duration * pv->samplerate ) / 90000;
    pv->size = pv->nchunks * chunk_size;

    if (in->s.start != AV_NOPTS_VALUE)
    {
        pv->next_pts = in->s.start;
    }
    pv->scr_sequence = in->s.scr_sequence;
}
