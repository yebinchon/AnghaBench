
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Cmd_TokenizeString (char const*) ;
 int Com_DPrintf (char*) ;
 int * CopyString (int ) ;
 int FS_Restart (int ) ;
 int MAX_SEARCH_PATHS ;
 int Z_Free (int *) ;
 int atoi (int ) ;
 int fs_checksumFeed ;
 int fs_numServerPaks ;
 scalar_t__ fs_reordered ;
 int ** fs_serverPakNames ;
 int * fs_serverPaks ;

void FS_PureServerSetLoadedPaks( const char *pakSums, const char *pakNames ) {
 int i, c, d;

 Cmd_TokenizeString( pakSums );

 c = Cmd_Argc();
 if ( c > MAX_SEARCH_PATHS ) {
  c = MAX_SEARCH_PATHS;
 }

 fs_numServerPaks = c;

 for ( i = 0 ; i < c ; i++ ) {
  fs_serverPaks[i] = atoi( Cmd_Argv( i ) );
 }

 if (fs_numServerPaks) {
  Com_DPrintf( "Connected to a pure server.\n" );
 }
 else
 {
  if (fs_reordered)
  {


   Com_DPrintf( "FS search reorder is required\n" );
   FS_Restart(fs_checksumFeed);
   return;
  }
 }

 for ( i = 0 ; i < c ; i++ ) {
  if (fs_serverPakNames[i]) {
   Z_Free(fs_serverPakNames[i]);
  }
  fs_serverPakNames[i] = ((void*)0);
 }
 if ( pakNames && *pakNames ) {
  Cmd_TokenizeString( pakNames );

  d = Cmd_Argc();
  if ( d > MAX_SEARCH_PATHS ) {
   d = MAX_SEARCH_PATHS;
  }

  for ( i = 0 ; i < d ; i++ ) {
   fs_serverPakNames[i] = CopyString( Cmd_Argv( i ) );
  }
 }
}
