
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_inforp ;
struct TYPE_4__ {int (* end_fn ) (TYPE_1__*,int ) ;} ;


 int stub1 (TYPE_1__*,int ) ;

void
png_push_have_end(png_structrp png_ptr, png_inforp info_ptr)
{
   if (png_ptr->end_fn != ((void*)0))
      (*(png_ptr->end_fn))(png_ptr, info_ptr);
}
