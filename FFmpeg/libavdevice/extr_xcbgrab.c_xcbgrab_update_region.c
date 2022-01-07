
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int window; int conn; scalar_t__ const region_border; scalar_t__ const y; scalar_t__ const x; } ;
typedef TYPE_1__ XCBGrabContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int XCB_CONFIG_WINDOW_X ;
 int XCB_CONFIG_WINDOW_Y ;
 int xcb_configure_window (int ,int ,int,scalar_t__ const*) ;

__attribute__((used)) static void xcbgrab_update_region(AVFormatContext *s)
{
    XCBGrabContext *c = s->priv_data;
    const uint32_t args[] = { c->x - c->region_border,
                              c->y - c->region_border };

    xcb_configure_window(c->conn,
                         c->window,
                         XCB_CONFIG_WINDOW_X | XCB_CONFIG_WINDOW_Y,
                         args);
}
