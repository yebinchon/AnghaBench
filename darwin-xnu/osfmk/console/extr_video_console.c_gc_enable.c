
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int spl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int (* enable ) (void*) ;int (* show_cursor ) (int ,int ) ;int (* clear_screen ) (int ,int ,int ,int,int) ;} ;
struct TYPE_3__ {int v_columns; int v_rows; } ;


 char ATTR_NONE ;
 char COLOR_CODE_SET (int ,int ,void*) ;
 int COLOR_FOREGROUND ;
 scalar_t__ FALSE ;
 void* TRUE ;
 int VCPUTC_LOCK_LOCK () ;
 int VCPUTC_LOCK_UNLOCK () ;
 scalar_t__ console_is_serial () ;
 void* disableConsoleOutput ;
 unsigned char* gc_buffer_attributes ;
 unsigned char* gc_buffer_characters ;
 unsigned char* gc_buffer_colorcodes ;
 int gc_buffer_columns ;
 int gc_buffer_rows ;
 int gc_buffer_size ;
 unsigned char* gc_buffer_tab_stops ;
 void* gc_enabled ;
 TYPE_2__ gc_ops ;
 int gc_reset_screen () ;
 int gc_x ;
 int gc_y ;
 scalar_t__ kalloc (int) ;
 int kfree (unsigned char*,int) ;
 int memset (unsigned char*,char,int) ;
 int splhigh () ;
 int splx (int ) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ,int ,int,int) ;
 int stub3 (int ,int ) ;
 int stub4 (void*) ;
 TYPE_1__ vinfo ;
 scalar_t__ vm_initialized ;

__attribute__((used)) static void
gc_enable( boolean_t enable )
{
 unsigned char *buffer_attributes = ((void*)0);
 unsigned char *buffer_characters = ((void*)0);
 unsigned char *buffer_colorcodes = ((void*)0);
 unsigned char *buffer_tab_stops = ((void*)0);
 uint32_t buffer_columns = 0;
 uint32_t buffer_rows = 0;
 uint32_t buffer_size = 0;
 spl_t s;

 if ( enable == FALSE )
 {

  if ( console_is_serial() == FALSE )
   disableConsoleOutput = TRUE;
  gc_enabled = FALSE;
  gc_ops.enable(FALSE);
 }

 s = splhigh( );
 VCPUTC_LOCK_LOCK( );

 if ( gc_buffer_size )
 {
  buffer_attributes = gc_buffer_attributes;
  buffer_characters = gc_buffer_characters;
  buffer_colorcodes = gc_buffer_colorcodes;
  buffer_tab_stops = gc_buffer_tab_stops;
  buffer_columns = gc_buffer_columns;
  buffer_rows = gc_buffer_rows;
  buffer_size = gc_buffer_size;

  gc_buffer_attributes = ((void*)0);
  gc_buffer_characters = ((void*)0);
  gc_buffer_colorcodes = ((void*)0);
  gc_buffer_tab_stops = ((void*)0);
  gc_buffer_columns = 0;
  gc_buffer_rows = 0;
  gc_buffer_size = 0;

  VCPUTC_LOCK_UNLOCK( );
  splx( s );

  kfree( buffer_attributes, buffer_size );
  kfree( buffer_characters, buffer_size );
  kfree( buffer_colorcodes, buffer_size );
  kfree( buffer_tab_stops, buffer_columns );
 }
 else
 {
  VCPUTC_LOCK_UNLOCK( );
  splx( s );
 }

 if ( enable )
 {
  if ( vm_initialized )
  {
   buffer_columns = vinfo.v_columns;
   buffer_rows = vinfo.v_rows;
   buffer_size = buffer_columns * buffer_rows;

   if ( buffer_size )
   {
    buffer_attributes = (unsigned char *) kalloc( buffer_size );
    buffer_characters = (unsigned char *) kalloc( buffer_size );
    buffer_colorcodes = (unsigned char *) kalloc( buffer_size );
    buffer_tab_stops = (unsigned char *) kalloc( buffer_columns );

    if ( buffer_attributes == ((void*)0) ||
         buffer_characters == ((void*)0) ||
         buffer_colorcodes == ((void*)0) ||
         buffer_tab_stops == ((void*)0) )
    {
     if ( buffer_attributes ) kfree( buffer_attributes, buffer_size );
     if ( buffer_characters ) kfree( buffer_characters, buffer_size );
     if ( buffer_colorcodes ) kfree( buffer_colorcodes, buffer_size );
     if ( buffer_tab_stops ) kfree( buffer_tab_stops, buffer_columns );

     buffer_attributes = ((void*)0);
     buffer_characters = ((void*)0);
     buffer_colorcodes = ((void*)0);
     buffer_tab_stops = ((void*)0);
     buffer_columns = 0;
     buffer_rows = 0;
     buffer_size = 0;
    }
    else
    {
     memset( buffer_attributes, ATTR_NONE, buffer_size );
     memset( buffer_characters, ' ', buffer_size );
     memset( buffer_colorcodes, COLOR_CODE_SET( 0, COLOR_FOREGROUND, TRUE ), buffer_size );
     memset( buffer_tab_stops, 0, buffer_columns );
    }
   }
  }

  s = splhigh( );
  VCPUTC_LOCK_LOCK( );

  gc_buffer_attributes = buffer_attributes;
  gc_buffer_characters = buffer_characters;
  gc_buffer_colorcodes = buffer_colorcodes;
  gc_buffer_tab_stops = buffer_tab_stops;
  gc_buffer_columns = buffer_columns;
  gc_buffer_rows = buffer_rows;
  gc_buffer_size = buffer_size;

  gc_reset_screen();

  VCPUTC_LOCK_UNLOCK( );
  splx( s );

  gc_ops.clear_screen(gc_x, gc_y, 0, vinfo.v_rows, 2);
  gc_ops.show_cursor(gc_x, gc_y);

  gc_ops.enable(TRUE);
  gc_enabled = TRUE;
  disableConsoleOutput = FALSE;
 }
}
