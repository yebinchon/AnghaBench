
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; int member_3; int member_2; } ;
typedef TYPE_2__ xcb_rectangle_t ;
typedef int xcb_gcontext_t ;
typedef int uint32_t ;
struct TYPE_9__ {int region_border; int window; int conn; int height; int width; TYPE_1__* screen; } ;
typedef TYPE_3__ XCBGrabContext ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int black_pixel; int white_pixel; } ;
typedef TYPE_4__ AVFormatContext ;


 int XCB_FILL_STYLE_SOLID ;
 int XCB_GC_BACKGROUND ;
 int XCB_GC_FILL_STYLE ;
 int XCB_GC_FOREGROUND ;
 int XCB_GC_LINE_STYLE ;
 int XCB_GC_LINE_WIDTH ;
 int XCB_LINE_STYLE_DOUBLE_DASH ;
 int xcb_create_gc (int ,int ,int ,int,int*) ;
 int xcb_generate_id (int ) ;
 int xcb_poly_rectangle (int ,int ,int ,int,TYPE_2__*) ;

__attribute__((used)) static void draw_rectangle(AVFormatContext *s)
{
    XCBGrabContext *c = s->priv_data;
    xcb_gcontext_t gc = xcb_generate_id(c->conn);
    uint32_t mask = XCB_GC_FOREGROUND |
                        XCB_GC_BACKGROUND |
                        XCB_GC_LINE_WIDTH |
                        XCB_GC_LINE_STYLE |
                        XCB_GC_FILL_STYLE;
    uint32_t values[] = { c->screen->black_pixel,
                          c->screen->white_pixel,
                          c->region_border,
                          XCB_LINE_STYLE_DOUBLE_DASH,
                          XCB_FILL_STYLE_SOLID };
    xcb_rectangle_t r = { 1, 1,
                          c->width + c->region_border * 2 - 3,
                          c->height + c->region_border * 2 - 3 };

    xcb_create_gc(c->conn, gc, c->window, mask, values);

    xcb_poly_rectangle(c->conn, c->window, gc, 1, &r);
}
