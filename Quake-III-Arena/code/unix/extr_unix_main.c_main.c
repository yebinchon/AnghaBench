
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysEvent_t ;
typedef int byte ;


 int Com_Frame () ;
 int Com_Init (char*) ;
 int FNDELAY ;
 int F_GETFL ;
 int F_SETFL ;
 int InitSig () ;
 int MAX_MSGLEN ;
 int MAX_QUED_EVENTS ;
 int NET_Init () ;
 int Sys_ConfigureFPU () ;
 int Sys_ConsoleInputInit () ;
 int Sys_ParseArgs (int,char**) ;
 int * eventQue ;
 int fcntl (int ,int ,int) ;
 int geteuid () ;
 int getuid () ;
 char* malloc (int) ;
 int memset (int *,int ,int) ;
 int saved_euid ;
 int seteuid (int ) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int * sys_packetReceived ;

int main ( int argc, char* argv[] )
{

  int len, i;
  char *cmdline;
  void Sys_SetDefaultCDPath(const char *path);


  saved_euid = geteuid();
  seteuid(getuid());

  Sys_ParseArgs( argc, argv );

  Sys_SetDefaultCDPath(argv[0]);


  for (len = 1, i = 1; i < argc; i++)
    len += strlen(argv[i]) + 1;
  cmdline = malloc(len);
  *cmdline = 0;
  for (i = 1; i < argc; i++)
  {
    if (i > 1)
      strcat(cmdline, " ");
    strcat(cmdline, argv[i]);
  }


  memset( &eventQue[0], 0, MAX_QUED_EVENTS*sizeof(sysEvent_t) );
  memset( &sys_packetReceived[0], 0, MAX_MSGLEN*sizeof(byte) );

  Com_Init(cmdline);
  NET_Init();

  Sys_ConsoleInputInit();

  fcntl(0, F_SETFL, fcntl (0, F_GETFL, 0) | FNDELAY);






  while (1)
  {

    Sys_ConfigureFPU();

    Com_Frame ();
  }
}
