
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* list; } ;
struct TYPE_18__ {TYPE_2__ pes; int ts_flags; int file_handle; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_19__ {int stream_id; int stream_id_ext; int bd_substream_id; scalar_t__ header_len; } ;
typedef TYPE_4__ hb_pes_info_t ;
struct TYPE_20__ {scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_5__ hb_buffer_t ;
typedef int bitbuf_t ;
struct TYPE_16__ {int codec_param; int codec; int codec_name; int stream_kind; } ;


 int A ;
 int AV_CODEC_ID_DTS ;
 int AV_CODEC_ID_TRUEHD ;
 int HB_ACODEC_DCA_HD ;
 int HB_ACODEC_FFTRUEHD ;
 int HB_DVD_READ_BUFFER_SIZE ;
 int MAX_PS_PROBE_SIZE ;
 int S ;
 int SEEK_SET ;
 int TS_HAS_PCR ;
 int U ;
 int WORK_DECVOBSUB ;
 int bits_get (int *,int) ;
 int bits_init (int *,scalar_t__,scalar_t__,int ) ;
 int bits_skip (int *,int) ;
 scalar_t__ decode_ps_map (TYPE_3__*,scalar_t__,scalar_t__) ;
 int fseeko (int ,int ,int ) ;
 int hb_buffer_close (TYPE_5__**) ;
 TYPE_5__* hb_buffer_init (int ) ;
 int hb_deep_log (int,char*) ;
 int hb_error (char*) ;
 int hb_log (char*) ;
 int hb_parse_ps (TYPE_3__*,scalar_t__,scalar_t__,TYPE_4__*) ;
 int hb_ps_read_packet (TYPE_3__*,TYPE_5__*) ;
 int hb_stream_seek (TYPE_3__*,double) ;
 int strncpy (int ,char*,int) ;
 int update_ps_streams (TYPE_3__*,int,int,int,int) ;

__attribute__((used)) static void hb_ps_stream_find_streams(hb_stream_t *stream)
{
    int ii, jj;
    hb_buffer_t *buf = hb_buffer_init(HB_DVD_READ_BUFFER_SIZE);

    fseeko( stream->file_handle, 0, SEEK_SET );



    for ( ii = 0; ii < 2; ii++ )
    {
        for ( jj = 0; jj < MAX_PS_PROBE_SIZE; jj += buf->size )
        {
            int stream_type;
            int len;

            hb_pes_info_t pes_info;
            buf->size = 0;
            len = hb_ps_read_packet( stream, buf );
            if ( len == 0 )
            {

                break;
            }
            if ( !hb_parse_ps( stream, buf->data, buf->size, &pes_info ) )
            {
                hb_deep_log( 2, "hb_ps_stream_find_streams: Error parsing PS packet");
                continue;
            }
            if ( pes_info.stream_id == 0xba )
            {
                stream->ts_flags |= TS_HAS_PCR;
            }
            else if ( pes_info.stream_id == 0xbc )
            {




                if ( decode_ps_map( stream, buf->data, buf->size ) )
                {
                    hb_log("Found program stream map");




                }
                else
                {
                    hb_error("Error parsing program stream map");
                }
            }
            else if ( ( pes_info.stream_id & 0xe0 ) == 0xc0 )
            {

                stream_type = 0x04;
                update_ps_streams( stream, pes_info.stream_id,
                                   pes_info.stream_id_ext, stream_type, -1 );
            }
            else if ( pes_info.stream_id == 0xbd )
            {
                int ssid = pes_info.bd_substream_id;


                if ( ssid >= 0x20 && ssid <= 0x37 )
                {
                    int idx = update_ps_streams( stream, pes_info.stream_id,
                                            pes_info.bd_substream_id, 0, -1 );
                    stream->pes.list[idx].stream_kind = S;
                    stream->pes.list[idx].codec = WORK_DECVOBSUB;
                    strncpy(stream->pes.list[idx].codec_name,
                            "DVD Subtitle", 80);
                    continue;
                }
                if ( ssid >= 0x80 && ssid <= 0x87 )
                {
                    stream_type = 0x81;
                }
                else if ( ( ssid >= 0x88 && ssid <= 0x8f ) ||
                          ( ssid >= 0x98 && ssid <= 0x9f ) )
                {


                    int idx = update_ps_streams( stream, pes_info.stream_id,
                                            pes_info.bd_substream_id, 0, U );
                    stream->pes.list[idx].codec = HB_ACODEC_DCA_HD;
                    stream->pes.list[idx].codec_param = AV_CODEC_ID_DTS;
                    continue;
                }
                else if ( ssid >= 0xa0 && ssid <= 0xaf )
                {
                    stream_type = 0x83;



                    update_ps_streams( stream, pes_info.stream_id,
                                   pes_info.bd_substream_id, stream_type, A );
                    continue;
                }
                else if ( ssid >= 0xb0 && ssid <= 0xbf )
                {

                    int idx = update_ps_streams( stream, pes_info.stream_id,
                                            pes_info.bd_substream_id, 0, A );
                    stream->pes.list[idx].codec = HB_ACODEC_FFTRUEHD;
                    stream->pes.list[idx].codec_param = AV_CODEC_ID_TRUEHD;
                    continue;
                }
                else if ( ssid >= 0xc0 && ssid <= 0xcf )
                {


                    bitbuf_t bb;
                    bits_init(&bb, buf->data + pes_info.header_len,
                              buf->size - pes_info.header_len, 0);
                    int sync = bits_get(&bb, 16);
                    if ( sync == 0x0b77 )
                    {
                        bits_skip(&bb, 24);
                        int bsid = bits_get(&bb, 5);
                        if ( bsid <= 10 )
                        {

                            stream_type = 0x81;
                        }
                        else
                        {

                            stream_type = 0x87;
                        }
                    }
                    else
                    {

                        stream_type = 0x00;
                    }
                }
                else
                {

                    stream_type = 0x00;
                }
                update_ps_streams( stream, pes_info.stream_id,
                                   pes_info.bd_substream_id, stream_type, -1 );
            }
            else if ( ( pes_info.stream_id & 0xf0 ) == 0xe0 )
            {
                stream_type = 0x00;
                update_ps_streams( stream, pes_info.stream_id,
                                   pes_info.stream_id_ext, stream_type, -1 );
            }
            else if ( pes_info.stream_id == 0xfd )
            {
                if ( pes_info.stream_id_ext == 0x55 ||
                     pes_info.stream_id_ext == 0x56 )
                {

                    stream_type = 0xea;
                }
                else
                {

                    stream_type = 0x00;
                }
                update_ps_streams( stream, pes_info.stream_id,
                                   pes_info.stream_id_ext, stream_type, -1 );
            }
        }
        hb_stream_seek( stream, 0.2 );
    }
    hb_buffer_close( &buf );
}
