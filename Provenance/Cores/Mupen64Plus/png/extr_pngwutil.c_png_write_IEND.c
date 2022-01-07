
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_size_t ;
struct TYPE_4__ {int mode; } ;


 int PNG_HAVE_IEND ;
 int png_IEND ;
 int png_debug (int,char*) ;
 int png_write_complete_chunk (TYPE_1__*,int ,int *,int ) ;

void
png_write_IEND(png_structrp png_ptr)
{
   png_debug(1, "in png_write_IEND");

   png_write_complete_chunk(png_ptr, png_IEND, ((void*)0), (png_size_t)0);
   png_ptr->mode |= PNG_HAVE_IEND;
}
