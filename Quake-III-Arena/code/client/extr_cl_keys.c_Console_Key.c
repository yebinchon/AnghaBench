
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int temp ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_9__ {char* buffer; int widthInChars; int cursor; } ;
struct TYPE_8__ {scalar_t__ down; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_DISCONNECTED ;
 size_t COMMAND_HISTORY ;
 int Cbuf_AddText (char*) ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int Con_Bottom () ;
 int Con_PageDown () ;
 int Con_PageUp () ;
 int Con_Top () ;
 int Field_Clear (TYPE_2__*) ;
 int Field_CompleteCommand (TYPE_2__*) ;
 int Field_KeyDownEvent (TYPE_2__*,int) ;
 size_t K_CTRL ;
 int K_DOWNARROW ;
 int K_END ;
 int K_ENTER ;
 int K_HOME ;
 int K_KP_DOWNARROW ;
 int K_KP_ENTER ;
 int K_KP_UPARROW ;
 int K_MWHEELDOWN ;
 int K_MWHEELUP ;
 int K_PGDN ;
 int K_PGUP ;
 size_t K_SHIFT ;
 int K_TAB ;
 int K_UPARROW ;
 int MAX_STRING_CHARS ;
 int Q_strncpyz (char*,char*,int) ;
 int SCR_UpdateScreen () ;
 TYPE_4__ cls ;
 TYPE_2__ g_consoleField ;
 int g_console_field_width ;
 TYPE_2__* historyEditLines ;
 size_t historyLine ;
 TYPE_1__* keys ;
 size_t nextHistoryLine ;
 char tolower (int) ;

void Console_Key (int key) {

 if ( key == 'l' && keys[K_CTRL].down ) {
  Cbuf_AddText ("clear\n");
  return;
 }


 if ( key == K_ENTER || key == K_KP_ENTER ) {

  if ( cls.state != CA_ACTIVE && g_consoleField.buffer[0] != '\\'
   && g_consoleField.buffer[0] != '/' ) {
   char temp[MAX_STRING_CHARS];

   Q_strncpyz( temp, g_consoleField.buffer, sizeof( temp ) );
   Com_sprintf( g_consoleField.buffer, sizeof( g_consoleField.buffer ), "\\%s", temp );
   g_consoleField.cursor++;
  }

  Com_Printf ( "]%s\n", g_consoleField.buffer );


  if ( g_consoleField.buffer[0] == '\\' || g_consoleField.buffer[0] == '/' ) {
   Cbuf_AddText( g_consoleField.buffer+1 );
   Cbuf_AddText ("\n");
  } else {

   if ( !g_consoleField.buffer[0] ) {
    return;
   } else {
    Cbuf_AddText ("cmd say ");
    Cbuf_AddText( g_consoleField.buffer );
    Cbuf_AddText ("\n");
   }
  }


  historyEditLines[nextHistoryLine % COMMAND_HISTORY] = g_consoleField;
  nextHistoryLine++;
  historyLine = nextHistoryLine;

  Field_Clear( &g_consoleField );

  g_consoleField.widthInChars = g_console_field_width;

  if ( cls.state == CA_DISCONNECTED ) {
   SCR_UpdateScreen ();
  }
  return;
 }



 if (key == K_TAB) {
  Field_CompleteCommand(&g_consoleField);
  return;
 }



 if ( (key == K_MWHEELUP && keys[K_SHIFT].down) || ( key == K_UPARROW ) || ( key == K_KP_UPARROW ) ||
   ( ( tolower(key) == 'p' ) && keys[K_CTRL].down ) ) {
  if ( nextHistoryLine - historyLine < COMMAND_HISTORY
   && historyLine > 0 ) {
   historyLine--;
  }
  g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
  return;
 }

 if ( (key == K_MWHEELDOWN && keys[K_SHIFT].down) || ( key == K_DOWNARROW ) || ( key == K_KP_DOWNARROW ) ||
   ( ( tolower(key) == 'n' ) && keys[K_CTRL].down ) ) {
  if (historyLine == nextHistoryLine)
   return;
  historyLine++;
  g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
  return;
 }


 if ( key == K_PGUP ) {
  Con_PageUp();
  return;
 }

 if ( key == K_PGDN) {
  Con_PageDown();
  return;
 }

 if ( key == K_MWHEELUP) {
  Con_PageUp();
  if(keys[K_CTRL].down) {
   Con_PageUp();
   Con_PageUp();
  }
  return;
 }

 if ( key == K_MWHEELDOWN) {
  Con_PageDown();
  if(keys[K_CTRL].down) {
   Con_PageDown();
   Con_PageDown();
  }
  return;
 }


 if ( key == K_HOME && keys[K_CTRL].down ) {
  Con_Top();
  return;
 }


 if ( key == K_END && keys[K_CTRL].down ) {
  Con_Bottom();
  return;
 }


 Field_KeyDownEvent( &g_consoleField, key );
}
