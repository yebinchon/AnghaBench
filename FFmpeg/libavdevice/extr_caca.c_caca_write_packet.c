
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int display; int dither; int window_height; int window_width; int canvas; } ;
typedef TYPE_1__ CACAContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int caca_dither_bitmap (int ,int ,int ,int ,int ,int ,int ) ;
 int caca_refresh_display (int ) ;

__attribute__((used)) static int caca_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    CACAContext *c = s->priv_data;

    caca_dither_bitmap(c->canvas, 0, 0, c->window_width, c->window_height, c->dither, pkt->data);
    caca_refresh_display(c->display);

    return 0;
}
