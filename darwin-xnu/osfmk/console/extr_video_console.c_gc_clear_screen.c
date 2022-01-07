
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* clear_screen ) (unsigned int,unsigned int,int,unsigned int,int) ;} ;


 char ATTR_NONE ;
 int gc_buffer_attributes ;
 int gc_buffer_characters ;
 int gc_buffer_colorcodes ;
 unsigned int gc_buffer_columns ;
 unsigned int gc_buffer_rows ;
 int gc_buffer_size ;
 char gc_color_code ;
 TYPE_1__ gc_ops ;
 int memset (int,char,int) ;
 int stub1 (unsigned int,unsigned int,int,unsigned int,int) ;

__attribute__((used)) static void
gc_clear_screen(unsigned int xx, unsigned int yy, int top, unsigned int bottom,
  int which)
{
 if (!gc_buffer_size) return;

 if ( xx < gc_buffer_columns && yy < gc_buffer_rows && bottom <= gc_buffer_rows )
 {
  uint32_t start, end;

  switch (which) {
   case 0:
    start = (yy * gc_buffer_columns) + xx;
    end = (bottom * gc_buffer_columns) - 1;
    break;
   case 1:
    start = (top * gc_buffer_columns);
    end = (yy * gc_buffer_columns) + xx;
    break;
   case 2:
    start = (top * gc_buffer_columns);
    end = (bottom * gc_buffer_columns) - 1;
    break;
   default:
    start = 0;
    end = 0;
    break;
  }

  memset(gc_buffer_attributes + start, ATTR_NONE, end - start + 1);
  memset(gc_buffer_characters + start, ' ', end - start + 1);
  memset(gc_buffer_colorcodes + start, gc_color_code, end - start + 1);
 }

 gc_ops.clear_screen(xx, yy, top, bottom, which);
}
