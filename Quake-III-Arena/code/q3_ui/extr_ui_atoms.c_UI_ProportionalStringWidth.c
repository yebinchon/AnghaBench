
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PROP_GAP_WIDTH ;
 int** propMap ;

int UI_ProportionalStringWidth( const char* str ) {
 const char * s;
 int ch;
 int charWidth;
 int width;

 s = str;
 width = 0;
 while ( *s ) {
  ch = *s & 127;
  charWidth = propMap[ch][2];
  if ( charWidth != -1 ) {
   width += charWidth;
   width += PROP_GAP_WIDTH;
  }
  s++;
 }

 width -= PROP_GAP_WIDTH;
 return width;
}
