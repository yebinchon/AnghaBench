
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CIN_RunCinematic; int CIN_PlayCinematic; int CIN_UploadCinematic; int (* Cvar_Set ) (char*,char*) ;int Cvar_Get; int FS_FileExists; int FS_FileIsInPAK; int FS_ListFiles; int FS_FreeFileList; int FS_WriteFile; int FS_FreeFile; int FS_ReadFile; int CM_DrawDebugSurface; int Hunk_FreeTempMemory; int Hunk_AllocateTempMemory; int Hunk_Alloc; int Hunk_AllocDebug; int Free; int Malloc; int Milliseconds; int (* Error ) (int ,char*) ;int Printf; int Cmd_ExecuteText; int Cmd_Argv; int Cmd_Argc; int Cmd_RemoveCommand; int Cmd_AddCommand; } ;
typedef TYPE_1__ refimport_t ;
typedef int refexport_t ;


 int CIN_PlayCinematic ;
 int CIN_RunCinematic ;
 int CIN_UploadCinematic ;
 int CL_RefMalloc ;
 int CL_RefPrintf ;
 int CL_ScaledMilliseconds ;
 int CM_DrawDebugSurface ;
 int Cbuf_ExecuteText ;
 int Cmd_AddCommand ;
 int Cmd_Argc ;
 int Cmd_Argv ;
 int Cmd_RemoveCommand ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*) ;
 int Cvar_Get ;
 int Cvar_Set (char*,char*) ;
 int ERR_FATAL ;
 int FS_FileExists ;
 int FS_FileIsInPAK ;
 int FS_FreeFile ;
 int FS_FreeFileList ;
 int FS_ListFiles ;
 int FS_ReadFile ;
 int FS_WriteFile ;
 int * GetRefAPI (int ,TYPE_1__*) ;
 int Hunk_Alloc ;
 int Hunk_AllocDebug ;
 int Hunk_AllocateTempMemory ;
 int Hunk_FreeTempMemory ;
 int REF_API_VERSION ;
 int Z_Free ;
 int hA3Dg_ExportRenderGeom (int *) ;
 int re ;

void CL_InitRef( void ) {
 refimport_t ri;
 refexport_t *ret;

 Com_Printf( "----- Initializing Renderer ----\n" );

 ri.Cmd_AddCommand = Cmd_AddCommand;
 ri.Cmd_RemoveCommand = Cmd_RemoveCommand;
 ri.Cmd_Argc = Cmd_Argc;
 ri.Cmd_Argv = Cmd_Argv;
 ri.Cmd_ExecuteText = Cbuf_ExecuteText;
 ri.Printf = CL_RefPrintf;
 ri.Error = Com_Error;
 ri.Milliseconds = CL_ScaledMilliseconds;
 ri.Malloc = CL_RefMalloc;
 ri.Free = Z_Free;



 ri.Hunk_Alloc = Hunk_Alloc;

 ri.Hunk_AllocateTempMemory = Hunk_AllocateTempMemory;
 ri.Hunk_FreeTempMemory = Hunk_FreeTempMemory;
 ri.CM_DrawDebugSurface = CM_DrawDebugSurface;
 ri.FS_ReadFile = FS_ReadFile;
 ri.FS_FreeFile = FS_FreeFile;
 ri.FS_WriteFile = FS_WriteFile;
 ri.FS_FreeFileList = FS_FreeFileList;
 ri.FS_ListFiles = FS_ListFiles;
 ri.FS_FileIsInPAK = FS_FileIsInPAK;
 ri.FS_FileExists = FS_FileExists;
 ri.Cvar_Get = Cvar_Get;
 ri.Cvar_Set = Cvar_Set;



 ri.CIN_UploadCinematic = CIN_UploadCinematic;
 ri.CIN_PlayCinematic = CIN_PlayCinematic;
 ri.CIN_RunCinematic = CIN_RunCinematic;

 ret = GetRefAPI( REF_API_VERSION, &ri );





 Com_Printf( "-------------------------------\n");

 if ( !ret ) {
  Com_Error (ERR_FATAL, "Couldn't initialize refresh" );
 }

 re = *ret;


 Cvar_Set( "cl_paused", "0" );
}
