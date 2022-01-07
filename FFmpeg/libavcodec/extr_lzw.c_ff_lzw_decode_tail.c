
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LZWState {scalar_t__ mode; scalar_t__ bs; int gb; } ;
typedef int LZWState ;


 scalar_t__ FF_LZW_GIF ;
 scalar_t__ bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_skip (int *,scalar_t__) ;
 int bytestream2_tell (int *) ;

int ff_lzw_decode_tail(LZWState *p)
{
    struct LZWState *s = (struct LZWState *)p;

    if(s->mode == FF_LZW_GIF) {
        while (s->bs > 0 && bytestream2_get_bytes_left(&s->gb)) {
            bytestream2_skip(&s->gb, s->bs);
            s->bs = bytestream2_get_byte(&s->gb);
        }
    }else
        bytestream2_skip(&s->gb, bytestream2_get_bytes_left(&s->gb));
    return bytestream2_tell(&s->gb);
}
