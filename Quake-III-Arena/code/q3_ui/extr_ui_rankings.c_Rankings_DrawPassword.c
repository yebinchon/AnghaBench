
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int password ;
struct TYPE_4__ {char* buffer; int cursor; } ;
struct TYPE_5__ {TYPE_1__ field; } ;
typedef TYPE_2__ menufield_s ;


 int MAX_EDIT_LINE ;
 scalar_t__ Q_isalpha (char) ;
 int Q_strncpyz (char*,char*,int) ;
 int Rankings_DrawText (TYPE_2__*) ;
 int strlen (char*) ;

void Rankings_DrawPassword( void* self )
{
 menufield_s* f;
 char password[MAX_EDIT_LINE];
 int length;
 int i;
 char* p;

 f = (menufield_s*)self;


 for( p = f->field.buffer; *p != '\0'; p++ )
 {

  if( !( ( (*p) >= '0' && (*p) <= '9') || Q_isalpha(*p)) )
  {
   *p = '\0';
  }
 }

 length = strlen( f->field.buffer );
 if( f->field.cursor > length )
 {
  f->field.cursor = length;
 }


 Q_strncpyz( password, f->field.buffer, sizeof(password) );


 for( i = 0; i < length; i++ )
 {
  f->field.buffer[i] = '*';
 }


 Rankings_DrawText( f );



 Q_strncpyz( f->field.buffer, password, sizeof(f->field.buffer) );
}
