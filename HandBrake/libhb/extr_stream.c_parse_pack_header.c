
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int hb_stream_t ;
struct TYPE_9__ {int header_len; int scr; } ;
typedef TYPE_1__ hb_pes_info_t ;
struct TYPE_10__ {int pos; } ;
typedef TYPE_2__ bitbuf_t ;


 int bits_bytes_left (TYPE_2__*) ;
 int bits_get (TYPE_2__*,int) ;
 int bits_skip (TYPE_2__*,int) ;
 int parse_pes_timestamp (TYPE_2__*) ;

__attribute__((used)) static int parse_pack_header(
    hb_stream_t *stream,
    bitbuf_t *bb,
    hb_pes_info_t *pes_info )
{
    if ( bits_bytes_left(bb) < 12)
    {
        return 0;
    }

    bits_skip(bb, 8 * 4);
    int mark = bits_get(bb, 2);

    if ( mark == 0x00 )
    {

        bits_skip(bb, 2);
    }
    pes_info->scr = parse_pes_timestamp( bb );

    if ( mark == 0x00 )
    {
        bits_skip(bb, 24);
        pes_info->header_len = (bb->pos >> 3);
    }
    else
    {
        bits_skip(bb, 39);
        int stuffing = bits_get(bb, 3);
        pes_info->header_len = stuffing;
        pes_info->header_len += (bb->pos >> 3);
    }
    return 1;
}
