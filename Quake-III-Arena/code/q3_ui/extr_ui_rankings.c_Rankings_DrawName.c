
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buffer; int cursor; } ;
struct TYPE_5__ {TYPE_1__ field; } ;
typedef TYPE_2__ menufield_s ;


 int Q_CleanStr (char*) ;
 scalar_t__ Q_isalpha (char) ;
 int Rankings_DrawText (TYPE_2__*) ;
 int strlen (char*) ;

void Rankings_DrawName( void* self )
{
 menufield_s *f;
 int length;
 char* p;

 f = (menufield_s*)self;


 for( p = f->field.buffer; *p != '\0'; p++ )
 {

  if( !( ( (*p) >= '0' && (*p) <= '9') || Q_isalpha(*p)) )
  {
   *p = '\0';
  }
 }


 Q_CleanStr( f->field.buffer );
 length = strlen( f->field.buffer );
 if( f->field.cursor > length )
 {
  f->field.cursor = length;
 }

 Rankings_DrawText( f );
}
