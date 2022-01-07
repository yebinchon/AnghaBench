
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FS_FCloseFile (scalar_t__) ;
 scalar_t__ com_journalFile ;
 scalar_t__ logfile ;

void Com_Shutdown (void) {
 if (logfile) {
  FS_FCloseFile (logfile);
  logfile = 0;
 }

 if ( com_journalFile ) {
  FS_FCloseFile( com_journalFile );
  com_journalFile = 0;
 }

}
