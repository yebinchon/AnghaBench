
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int hb_stream_t ;
typedef int hb_buffer_t ;


 int * flush_ts_streams (int *) ;
 int hb_log (char*) ;
 int * hb_ts_decode_pkt (int *,int const*,int ,int ) ;
 int * next_packet (int *) ;

__attribute__((used)) static hb_buffer_t * hb_ts_stream_decode( hb_stream_t *stream )
{
    hb_buffer_t * b;


    while ( 1 )
    {
        const uint8_t *buf = next_packet(stream);
        if ( buf == ((void*)0) )
        {


            hb_log("hb_ts_stream_decode - eof");
            b = flush_ts_streams(stream);
            return b;
        }

        b = hb_ts_decode_pkt( stream, buf, 0, 0 );
        if ( b )
        {
            return b;
        }
    }
    return ((void*)0);
}
