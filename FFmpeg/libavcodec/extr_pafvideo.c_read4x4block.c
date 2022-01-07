
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ PAFVideoDecContext ;


 int bytestream2_get_buffer (int *,int *,int) ;

__attribute__((used)) static void read4x4block(PAFVideoDecContext *c, uint8_t *dst, int width)
{
    int i;

    for (i = 0; i < 4; i++) {
        bytestream2_get_buffer(&c->gb, dst, 4);
        dst += width;
    }
}
