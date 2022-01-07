
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {int (* paint_char ) (unsigned int,unsigned int,unsigned char,int,int ,int ) ;} ;


 int* gc_buffer_attributes ;
 unsigned char* gc_buffer_characters ;
 int * gc_buffer_colorcodes ;
 unsigned int gc_buffer_columns ;
 unsigned int gc_buffer_rows ;
 int gc_color_code ;
 TYPE_1__ gc_ops ;
 int stub1 (unsigned int,unsigned int,unsigned char,int,int ,int ) ;

__attribute__((used)) static void
gc_paint_char(unsigned int xx, unsigned int yy, unsigned char ch, int attrs)
{
 if ( xx < gc_buffer_columns && yy < gc_buffer_rows )
 {
  uint32_t index = (yy * gc_buffer_columns) + xx;

  gc_buffer_attributes[index] = attrs;
  gc_buffer_characters[index] = ch;
  gc_buffer_colorcodes[index] = gc_color_code;
 }

 gc_ops.paint_char(xx, yy, ch, attrs, 0, 0);
}
