
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; } ;
typedef TYPE_1__ CinepakEncContext ;


 int AV_WB16 (unsigned char*,int) ;
 int AV_WB24 (unsigned char*,scalar_t__) ;
 scalar_t__ STRIP_HEADER_SIZE ;

__attribute__((used)) static void write_strip_header(CinepakEncContext *s, int y, int h, int keyframe,
                               unsigned char *buf, int strip_size)
{





    buf[0] = keyframe ? 0x10 : 0x11;
    AV_WB24(&buf[1], strip_size + STRIP_HEADER_SIZE);

    AV_WB16(&buf[4], 0);
    AV_WB16(&buf[6], 0);

    AV_WB16(&buf[8], h);
    AV_WB16(&buf[10], s->w);
}
