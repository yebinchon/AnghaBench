
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer; } ;


 int CVAR_INIT ;
 int Com_Printf (char*) ;
 int Com_StartupVariable (char*) ;
 TYPE_1__* Cvar_Get (char*,char*,int ) ;
 int Cvar_Set (char*,char*) ;
 int FS_FOpenFileRead (char*,scalar_t__*,int ) ;
 scalar_t__ FS_FOpenFileWrite (char*) ;
 TYPE_1__* com_journal ;
 scalar_t__ com_journalDataFile ;
 scalar_t__ com_journalFile ;
 int qtrue ;

void Com_InitJournaling( void ) {
 Com_StartupVariable( "journal" );
 com_journal = Cvar_Get ("journal", "0", CVAR_INIT);
 if ( !com_journal->integer ) {
  return;
 }

 if ( com_journal->integer == 1 ) {
  Com_Printf( "Journaling events\n");
  com_journalFile = FS_FOpenFileWrite( "journal.dat" );
  com_journalDataFile = FS_FOpenFileWrite( "journaldata.dat" );
 } else if ( com_journal->integer == 2 ) {
  Com_Printf( "Replaying journaled events\n");
  FS_FOpenFileRead( "journal.dat", &com_journalFile, qtrue );
  FS_FOpenFileRead( "journaldata.dat", &com_journalDataFile, qtrue );
 }

 if ( !com_journalFile || !com_journalDataFile ) {
  Cvar_Set( "com_journal", "0" );
  com_journalFile = 0;
  com_journalDataFile = 0;
  Com_Printf( "Couldn't open journal files\n" );
 }
}
