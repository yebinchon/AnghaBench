
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
typedef TYPE_1__ cvar_t ;
typedef int byte ;
struct TYPE_5__ {scalar_t__ integer; } ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int Cmd_AddCommand (char*,int ) ;
 int Com_Error (int ,char*,...) ;
 int Com_Meminfo_f ;
 int Com_Printf (char*,int,int) ;
 TYPE_1__* Cvar_Get (char*,int ,int) ;
 int DEF_COMHUNKMEGS ;
 int ERR_FATAL ;
 scalar_t__ FS_LoadStack () ;
 int Hunk_Clear () ;
 int Hunk_Log ;
 int Hunk_SmallLog ;
 int MIN_COMHUNKMEGS ;
 int MIN_DEDICATED_COMHUNKMEGS ;
 int Z_LogHeap ;
 int * calloc (int,int) ;
 TYPE_2__* com_dedicated ;
 int * s_hunkData ;
 int s_hunkTotal ;

void Com_InitHunkMemory( void ) {
 cvar_t *cv;
 int nMinAlloc;
 char *pMsg = ((void*)0);





 if (FS_LoadStack() != 0) {
  Com_Error( ERR_FATAL, "Hunk initialization failed. File system load stack not zero");
 }


 cv = Cvar_Get( "com_hunkMegs", DEF_COMHUNKMEGS, CVAR_LATCH | CVAR_ARCHIVE );


 if (com_dedicated && com_dedicated->integer) {
  nMinAlloc = MIN_DEDICATED_COMHUNKMEGS;
  pMsg = "Minimum com_hunkMegs for a dedicated server is %i, allocating %i megs.\n";
 }
 else {
  nMinAlloc = MIN_COMHUNKMEGS;
  pMsg = "Minimum com_hunkMegs is %i, allocating %i megs.\n";
 }

 if ( cv->integer < nMinAlloc ) {
  s_hunkTotal = 1024 * 1024 * nMinAlloc;
     Com_Printf(pMsg, nMinAlloc, s_hunkTotal / (1024 * 1024));
 } else {
  s_hunkTotal = cv->integer * 1024 * 1024;
 }



 s_hunkData = calloc( s_hunkTotal + 31, 1 );
 if ( !s_hunkData ) {
  Com_Error( ERR_FATAL, "Hunk data failed to allocate %i megs", s_hunkTotal / (1024*1024) );
 }

 s_hunkData = (byte *) ( ( (int)s_hunkData + 31 ) & ~31 );
 Hunk_Clear();

 Cmd_AddCommand( "meminfo", Com_Meminfo_f );







}
