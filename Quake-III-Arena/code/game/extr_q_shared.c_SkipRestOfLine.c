
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int com_lines ;

void SkipRestOfLine ( char **data ) {
 char *p;
 int c;

 p = *data;
 while ( (c = *p++) != 0 ) {
  if ( c == '\n' ) {
   com_lines++;
   break;
  }
 }

 *data = p;
}
