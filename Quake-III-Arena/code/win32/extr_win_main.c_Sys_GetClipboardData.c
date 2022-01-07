
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int CF_TEXT ;
 int CloseClipboard () ;
 int GetClipboardData (int ) ;
 char* GlobalLock (int ) ;
 scalar_t__ GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ OpenClipboard (int *) ;
 int Q_strncpyz (char*,char*,scalar_t__) ;
 char* Z_Malloc (scalar_t__) ;
 int strtok (char*,char*) ;

char *Sys_GetClipboardData( void ) {
 char *data = ((void*)0);
 char *cliptext;

 if ( OpenClipboard( ((void*)0) ) != 0 ) {
  HANDLE hClipboardData;

  if ( ( hClipboardData = GetClipboardData( CF_TEXT ) ) != 0 ) {
   if ( ( cliptext = GlobalLock( hClipboardData ) ) != 0 ) {
    data = Z_Malloc( GlobalSize( hClipboardData ) + 1 );
    Q_strncpyz( data, cliptext, GlobalSize( hClipboardData ) );
    GlobalUnlock( hClipboardData );

    strtok( data, "\n\r\b" );
   }
  }
  CloseClipboard();
 }
 return data;
}
