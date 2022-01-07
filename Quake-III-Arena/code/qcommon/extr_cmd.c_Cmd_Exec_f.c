
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int COM_DefaultExtension (char*,int,char*) ;
 int Cbuf_InsertText (char*) ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int FS_FreeFile (char*) ;
 int FS_ReadFile (char*,void**) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,int ,int) ;

void Cmd_Exec_f( void ) {
 char *f;
 int len;
 char filename[MAX_QPATH];

 if (Cmd_Argc () != 2) {
  Com_Printf ("exec <filename> : execute a script file\n");
  return;
 }

 Q_strncpyz( filename, Cmd_Argv(1), sizeof( filename ) );
 COM_DefaultExtension( filename, sizeof( filename ), ".cfg" );
 len = FS_ReadFile( filename, (void **)&f);
 if (!f) {
  Com_Printf ("couldn't exec %s\n",Cmd_Argv(1));
  return;
 }
 Com_Printf ("execing %s\n",Cmd_Argv(1));

 Cbuf_InsertText (f);

 FS_FreeFile (f);
}
