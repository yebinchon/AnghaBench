
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int UINT ;
typedef int UCHAR ;


 int Alert (char*,char*) ;
 int AlertW (int *,int *) ;
 int CheckEndian () ;
 int CheckUnixTempDir () ;
 int * CopyStr (char*) ;
 int GetCurrentMachineIpProcessHash (int *) ;
 int GetExeNameW (int *,int) ;
 int InitCommandLineStr (int,char**) ;
 int InitCrc32 () ;
 int InitCryptLibrary () ;
 int InitFifo () ;
 int InitGetExeName (char*) ;
 int InitHamcore () ;
 int InitKernelStatus () ;
 int InitNetwork () ;
 int InitOsInfo () ;
 int InitProbe () ;
 int InitProcessCallOnce () ;
 int InitSecure () ;
 int InitStringLibrary () ;
 int InitTable () ;
 int InitThreading () ;
 int InitTick64 () ;
 int InitTracking () ;
 int IsFileExistsW (int *) ;
 scalar_t__ IsTrackingEnabled () ;
 int LC_ALL ;
 int LoadPrivateIPFile () ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int MsInit () ;
 int NewLock () ;
 int OSInit () ;
 int OSIsSupportedOs () ;
 int RsaCheckEx () ;
 int SHA1_SIZE ;
 int SetLocale (int *) ;
 scalar_t__ StrCmpi (char*,int ) ;
 scalar_t__ SystemTime64 () ;
 int UNIX_SVC_ARG_FOREGROUND ;
 int UniFormat (int *,int,char*,int *) ;
 int Win32IsNt () ;
 int _DISABLE_PER_THREAD_LOCALE ;
 int _configthreadlocale (int ) ;
 int _exit (int ) ;
 int * cmdline ;
 int dot_net_mode ;
 int * exename ;
 int exit (int ) ;
 int g_debug ;
 int g_foreground ;
 int g_memcheck ;
 int init_mayaqua_counter ;
 int is_nt ;
 int setbuf (int ,int *) ;
 int setlocale (int ,char*) ;
 int srand (int ) ;
 int stdout ;
 int tick_manual_lock ;

void InitMayaqua(bool memcheck, bool debug, int argc, char **argv)
{
 wchar_t tmp[MAX_PATH];
 UCHAR hash[SHA1_SIZE];

 if ((init_mayaqua_counter++) > 0)
 {
  return;
 }

 InitProcessCallOnce();

 g_memcheck = memcheck;
 g_debug = debug;
 cmdline = ((void*)0);
 if (dot_net_mode == 0)
 {

  setbuf(stdout, ((void*)0));
 }




 g_foreground = 0;
 CheckEndian();






 setlocale(LC_ALL, "");


 OSInit();


 srand((UINT)SystemTime64());

 tick_manual_lock = NewLock();


 InitCrc32();


 InitFifo();


 InitKernelStatus();

 if (IsTrackingEnabled())
 {

  InitTracking();
 }


 InitThreading();


 InitStringLibrary();


 SetLocale(((void*)0));


 InitCryptLibrary();


 InitTick64();


 InitNetwork();


 InitGetExeName(argc >= 1 ? argv[0] : ((void*)0));


 InitCommandLineStr(argc, argv);


 InitOsInfo();







 InitSecure();

 if (OSIsSupportedOs() == 0)
 {

  exit(0);
 }


 if (RsaCheckEx() == 0)
 {

  Alert("OpenSSL Library Init Failed. (too old?)\nPlease install the latest version of OpenSSL.\n\n", "RsaCheck()");
  exit(0);
 }


 InitHamcore();


 InitTable();

 if (exename == ((void*)0))
 {

  exename = CopyStr("unknown");
 }



 GetExeNameW(tmp, sizeof(tmp));
 if (IsFileExistsW(tmp) == 0)
 {
  wchar_t tmp2[MAX_SIZE];

  UniFormat(tmp2, sizeof(tmp2),
   L"Error: Executable binary file \"%s\" not found.\r\n\r\n"
   L"Please execute program with full path.\r\n",
   tmp);

  AlertW(tmp2, ((void*)0));
  _exit(0);
 }

 CheckUnixTempDir();


 InitProbe();


 GetCurrentMachineIpProcessHash(hash);


 LoadPrivateIPFile();
}
