
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int width; int frame_size; int ** frame; int gb; } ;
typedef TYPE_1__ PAFVideoDecContext ;


 int bytestream2_get_be16 (int *) ;

__attribute__((used)) static void set_src_position(PAFVideoDecContext *c,
                             const uint8_t **p,
                             const uint8_t **pend)
{
    int val = bytestream2_get_be16(&c->gb);
    int page = val >> 14;
    int x = (val & 0x7F);
    int y = ((val >> 7) & 0x7F);

    *p = c->frame[page] + x * 2 + y * 2 * c->width;
    *pend = c->frame[page] + c->frame_size;
}
