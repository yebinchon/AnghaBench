
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int chroma_v_index; int chroma_u_index; int * luma_index; int render_func; int fourcc; } ;
typedef TYPE_1__ xv_t ;
struct TYPE_11__ {scalar_t__ rgb32; } ;
typedef TYPE_2__ video_info_t ;
typedef int XvPortID ;
struct TYPE_12__ {scalar_t__ type; int bits_per_pixel; scalar_t__ format; scalar_t__* component_order; int id; } ;
typedef TYPE_3__ XvImageFormatValues ;
struct TYPE_13__ {scalar_t__* components; int v_index; int u_index; int * luma_index; int render_16; int render_32; } ;
typedef int Display ;


 unsigned int ARRAY_SIZE (TYPE_6__*) ;
 int XFree (TYPE_3__*) ;
 TYPE_3__* XvListImageFormats (int ,int ,int*) ;
 scalar_t__ XvPacked ;
 scalar_t__ XvYUV ;
 TYPE_6__* formats ;
 int g_x11_dpy ;

__attribute__((used)) static bool xv_adaptor_set_format(xv_t *xv, Display *dpy,
      XvPortID port, const video_info_t *video)
{
   int i;
   unsigned j;
   int format_count;
   XvImageFormatValues *format = XvListImageFormats(
         g_x11_dpy, port, &format_count);

   if (!format)
      return 0;

   for (i = 0; i < format_count; i++)
   {
      for (j = 0; j < ARRAY_SIZE(formats); j++)
      {
         if (format[i].type == XvYUV
               && format[i].bits_per_pixel == 16
               && format[i].format == XvPacked)
         {
            if (format[i].component_order[0] == formats[j].components[0] &&
                  format[i].component_order[1] == formats[j].components[1] &&
                  format[i].component_order[2] == formats[j].components[2] &&
                  format[i].component_order[3] == formats[j].components[3])
            {
               xv->fourcc = format[i].id;
               xv->render_func = video->rgb32
                  ? formats[j].render_32 : formats[j].render_16;

               xv->luma_index[0] = formats[j].luma_index[0];
               xv->luma_index[1] = formats[j].luma_index[1];
               xv->chroma_u_index = formats[j].u_index;
               xv->chroma_v_index = formats[j].v_index;
               XFree(format);
               return 1;
            }
         }
      }
   }

   XFree(format);
   return 0;
}
