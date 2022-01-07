
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_2__ {int (* scroll_up ) (int,unsigned int,unsigned int) ;int (* paint_char ) (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ;} ;


 scalar_t__ ATTR_NONE ;
 int COLOR_CODE_GET (unsigned char,int ) ;
 int FALSE ;
 int TRUE ;
 scalar_t__* gc_buffer_attributes ;
 char* gc_buffer_characters ;
 unsigned char* gc_buffer_colorcodes ;
 int gc_buffer_columns ;
 unsigned int gc_buffer_rows ;
 int gc_buffer_size ;
 int gc_clear_screen (int ,unsigned int,unsigned int,unsigned int,int ) ;
 unsigned char gc_color_code ;
 TYPE_1__ gc_ops ;
 int gc_update_color (int ,int ) ;
 int stub1 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ;
 int stub2 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ;
 int stub3 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ;
 int stub4 (unsigned int,unsigned int,char,scalar_t__,char,scalar_t__) ;
 int stub5 (int,unsigned int,unsigned int) ;

__attribute__((used)) static void
gc_scroll_up(int num, unsigned int top, unsigned int bottom)
{
 if (!gc_buffer_size) return;

 if ( bottom <= gc_buffer_rows )
 {
  unsigned char colorcodesave = gc_color_code;
  uint32_t column, row;
  uint32_t index, jump;

  jump = num * gc_buffer_columns;

  for ( row = top ; row < bottom - num ; row++ )
  {
   index = row * gc_buffer_columns;

   for ( column = 0 ; column < gc_buffer_columns ; index++, column++ )
   {
    if ( gc_buffer_attributes[index] != gc_buffer_attributes[index + jump] ||
         gc_buffer_characters[index] != gc_buffer_characters[index + jump] ||
         gc_buffer_colorcodes[index] != gc_buffer_colorcodes[index + jump] )
    {
     if ( gc_color_code != gc_buffer_colorcodes[index + jump] )
     {
      gc_update_color(COLOR_CODE_GET(gc_buffer_colorcodes[index + jump], TRUE ), TRUE );
      gc_update_color(COLOR_CODE_GET(gc_buffer_colorcodes[index + jump], FALSE), FALSE);
     }

     if ( gc_buffer_colorcodes[index] != gc_buffer_colorcodes[index + jump] )
     {
      gc_ops.paint_char( column,
                                              row,
                                              gc_buffer_characters[index + jump],
                                              gc_buffer_attributes[index + jump],
                                              0,
                                              0 );
     }
     else
     {
      gc_ops.paint_char( column,
                                              row,
                                              gc_buffer_characters[index + jump],
                                              gc_buffer_attributes[index + jump],
                                              gc_buffer_characters[index],
                                              gc_buffer_attributes[index] );
     }

     gc_buffer_attributes[index] = gc_buffer_attributes[index + jump];
     gc_buffer_characters[index] = gc_buffer_characters[index + jump];
     gc_buffer_colorcodes[index] = gc_buffer_colorcodes[index + jump];
    }
   }
  }

  if ( colorcodesave != gc_color_code )
  {
   gc_update_color(COLOR_CODE_GET(colorcodesave, TRUE ), TRUE );
   gc_update_color(COLOR_CODE_GET(colorcodesave, FALSE), FALSE);
  }



  for ( row = bottom - num ; row < bottom ; row++ )
  {
   index = row * gc_buffer_columns;

   for ( column = 0 ; column < gc_buffer_columns ; index++, column++ )
   {
    if ( gc_buffer_attributes[index] != ATTR_NONE ||
         gc_buffer_characters[index] != ' ' ||
         gc_buffer_colorcodes[index] != gc_color_code )
    {
     if ( gc_buffer_colorcodes[index] != gc_color_code )
     {
      gc_ops.paint_char( column,
                                              row,
                                              ' ',
                                              ATTR_NONE,
                                              0,
                                              0 );
     }
     else
     {
      gc_ops.paint_char( column,
                                              row,
                                              ' ',
                                              ATTR_NONE,
                                              gc_buffer_characters[index],
                                              gc_buffer_attributes[index] );
     }

     gc_buffer_attributes[index] = ATTR_NONE;
     gc_buffer_characters[index] = ' ';
     gc_buffer_colorcodes[index] = gc_color_code;
    }
   }
  }
 }
 else
 {
  gc_ops.scroll_up(num, top, bottom);



  gc_clear_screen(0, bottom - num, top, bottom, 0);
 }
}
