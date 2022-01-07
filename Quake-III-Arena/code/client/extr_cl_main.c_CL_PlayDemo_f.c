
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int retry ;
typedef int name ;
struct TYPE_4__ {char* demoName; int firstDemoFrameSkipped; int demoplaying; int demofile; } ;
struct TYPE_3__ {scalar_t__ state; char* servername; } ;


 scalar_t__ CA_CONNECTED ;
 scalar_t__ CA_PRIMED ;
 int CL_Disconnect (int ) ;
 int CL_ReadDemoMessage () ;
 int CL_WalkDemoExt (char*,char*,int *) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Error (int ,char*,char*) ;
 int Com_Printf (char*,...) ;
 int Com_sprintf (char*,int,char*,char*) ;
 int Con_Close () ;
 int Cvar_Set (char*,char*) ;
 int ERR_DROP ;
 int FS_FOpenFileRead (char*,int *,int ) ;
 int MAX_OSPATH ;
 int Q_strncpyz (char*,char*,int) ;
 int atoi (char*) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 int* demo_protocols ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;

void CL_PlayDemo_f( void ) {
 char name[MAX_OSPATH];
 char *arg, *ext_test;
 int protocol, i;
 char retry[MAX_OSPATH];

 if (Cmd_Argc() != 2) {
  Com_Printf ("playdemo <demoname>\n");
  return;
 }


 Cvar_Set( "sv_killserver", "1" );

 CL_Disconnect( qtrue );


 arg = Cmd_Argv(1);


 ext_test = arg + strlen(arg) - 6;
 if ((strlen(arg) > 6) && (ext_test[0] == '.') && ((ext_test[1] == 'd') || (ext_test[1] == 'D')) && ((ext_test[2] == 'm') || (ext_test[2] == 'M')) && (ext_test[3] == '_'))
 {
  protocol = atoi(ext_test+4);
  i=0;
  while(demo_protocols[i])
  {
   if (demo_protocols[i] == protocol)
    break;
   i++;
  }
  if (demo_protocols[i])
  {
   Com_sprintf (name, sizeof(name), "demos/%s", arg);
   FS_FOpenFileRead( name, &clc.demofile, qtrue );
  } else {
   Com_Printf("Protocol %d not supported for demos\n", protocol);
   Q_strncpyz(retry, arg, sizeof(retry));
   retry[strlen(retry)-6] = 0;
   CL_WalkDemoExt( retry, name, &clc.demofile );
  }
 } else {
  CL_WalkDemoExt( arg, name, &clc.demofile );
 }

 if (!clc.demofile) {
  Com_Error( ERR_DROP, "couldn't open %s", name);
  return;
 }
 Q_strncpyz( clc.demoName, Cmd_Argv(1), sizeof( clc.demoName ) );

 Con_Close();

 cls.state = CA_CONNECTED;
 clc.demoplaying = qtrue;
 Q_strncpyz( cls.servername, Cmd_Argv(1), sizeof( cls.servername ) );


 while ( cls.state >= CA_CONNECTED && cls.state < CA_PRIMED ) {
  CL_ReadDemoMessage();
 }


 clc.firstDemoFrameSkipped = qfalse;
}
