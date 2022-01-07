
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int font; } ;
typedef TYPE_1__ d3dfonts_t ;
struct TYPE_5__ {int right; int left; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ RECT ;


 int DT_CALCRECT ;
 int d3d9x_font_draw_text (int ,int *,void*,unsigned int,TYPE_2__*,int ,int ) ;

__attribute__((used)) static int d3dfonts_w32_get_message_width(void* data, const char* msg,
      unsigned msg_len, float scale)
{
   RECT box = {0,0,0,0};
   d3dfonts_t *d3dfonts = (d3dfonts_t*)data;

   if (!d3dfonts || !msg)
      return 0;

   d3d9x_font_draw_text(d3dfonts->font, ((void*)0), (void*)msg,
         msg_len? msg_len : -1, &box, DT_CALCRECT, 0);

   return box.right - box.left;
}
