
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int cmd ;


 int Cbuf_AddText (char*) ;
 int Com_sprintf (char*,int,char*,char*,int,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int time ;

void CL_AddKeyUpCommands( int key, char *kb ) {
 int i;
 char button[1024], *buttonPtr;
 char cmd[1024];
 qboolean keyevent;

 if ( !kb ) {
  return;
 }
 keyevent = qfalse;
 buttonPtr = button;
 for ( i = 0; ; i++ ) {
  if ( kb[i] == ';' || !kb[i] ) {
   *buttonPtr = '\0';
   if ( button[0] == '+') {


    Com_sprintf (cmd, sizeof(cmd), "-%s %i %i\n", button+1, key, time);
    Cbuf_AddText (cmd);
    keyevent = qtrue;
   } else {
    if (keyevent) {

     Cbuf_AddText (button);
     Cbuf_AddText ("\n");
    }
   }
   buttonPtr = button;
   while ( (kb[i] <= ' ' || kb[i] == ';') && kb[i] != 0 ) {
    i++;
   }
  }
  *buttonPtr++ = kb[i];
  if ( !kb[i] ) {
   break;
  }
 }
}
