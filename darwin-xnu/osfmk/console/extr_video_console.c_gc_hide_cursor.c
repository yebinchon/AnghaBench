
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {int (* hide_cursor ) (unsigned int,unsigned int) ;int (* paint_char ) (unsigned int,unsigned int,unsigned char,unsigned char,int ,int ) ;} ;


 int COLOR_CODE_GET (unsigned char,int ) ;
 int FALSE ;
 int TRUE ;
 unsigned char* gc_buffer_attributes ;
 unsigned char* gc_buffer_characters ;
 unsigned char* gc_buffer_colorcodes ;
 unsigned int gc_buffer_columns ;
 unsigned int gc_buffer_rows ;
 unsigned char gc_color_code ;
 TYPE_1__ gc_ops ;
 int gc_update_color (int ,int ) ;
 int stub1 (unsigned int,unsigned int,unsigned char,unsigned char,int ,int ) ;
 int stub2 (unsigned int,unsigned int) ;

__attribute__((used)) static void
gc_hide_cursor(unsigned int xx, unsigned int yy)
{
 if ( xx < gc_buffer_columns && yy < gc_buffer_rows )
 {
  uint32_t index = (yy * gc_buffer_columns) + xx;
  unsigned char attribute = gc_buffer_attributes[index];
  unsigned char character = gc_buffer_characters[index];
  unsigned char colorcode = gc_buffer_colorcodes[index];
  unsigned char colorcodesave = gc_color_code;

  gc_update_color(COLOR_CODE_GET(colorcode, TRUE ), TRUE );
  gc_update_color(COLOR_CODE_GET(colorcode, FALSE), FALSE);

  gc_ops.paint_char(xx, yy, character, attribute, 0, 0);

  gc_update_color(COLOR_CODE_GET(colorcodesave, TRUE ), TRUE );
  gc_update_color(COLOR_CODE_GET(colorcodesave, FALSE), FALSE);
 }
 else
 {
  gc_ops.hide_cursor(xx, yy);
 }
}
