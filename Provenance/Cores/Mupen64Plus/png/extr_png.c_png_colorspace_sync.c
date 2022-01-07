
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* png_inforp ;
typedef TYPE_2__* png_const_structrp ;
struct TYPE_8__ {int colorspace; } ;
struct TYPE_7__ {int colorspace; } ;


 int png_colorspace_sync_info (TYPE_2__*,TYPE_1__*) ;

void
png_colorspace_sync(png_const_structrp png_ptr, png_inforp info_ptr)
{
   if (info_ptr == ((void*)0))
      return;

   info_ptr->colorspace = png_ptr->colorspace;
   png_colorspace_sync_info(png_ptr, info_ptr);
}
