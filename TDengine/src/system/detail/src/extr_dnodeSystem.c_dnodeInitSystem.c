
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {scalar_t__ num; scalar_t__ (* initFp ) () ;} ;


 int SIGPIPE ;
 int SIG_IGN ;
 int TSDB_MOD_MAX ;
 int dError (char*) ;
 int dPrint (char*,...) ;
 int dmutex ;
 int dnodeCountRequest ;
 int dnodeInitModules () ;
 scalar_t__ dnodeInitSystemSpec () ;
 int dnodeStartModuleSpec () ;
 char* logDir ;
 int mkdir (char*,int) ;
 int monitorCountReqFp ;
 int printf (char*) ;
 int pthread_mutex_init (int *,int *) ;
 int signal (int ,int ) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ stub1 () ;
 scalar_t__ taosCreateTierDirectory () ;
 int taosGetTimestampSec () ;
 scalar_t__ taosInitLog (char*,int ,int) ;
 int taosResolveCRC () ;
 int tsInternalIp ;
 TYPE_1__* tsModule ;
 int tsNumOfLogLines ;
 int tsPrintGlobalConfig () ;
 int tsReadGlobalConfig () ;
 int tsReadGlobalLogConfig () ;
 int tsRebootTime ;
 int tscEmbedded ;
 int vnodeInitQHandle () ;
 scalar_t__ vnodeInitSystem () ;

int dnodeInitSystem() {
  char temp[128];
  struct stat dirstat;

  taosResolveCRC();

  tsRebootTime = taosGetTimestampSec();
  tscEmbedded = 1;


  tsReadGlobalLogConfig();

  if (stat(logDir, &dirstat) < 0) mkdir(logDir, 0755);

  sprintf(temp, "%s/taosdlog", logDir);
  if (taosInitLog(temp, tsNumOfLogLines, 1) < 0) printf("failed to init log file\n");

  if (!tsReadGlobalConfig()) {
    tsPrintGlobalConfig();
    dError("TDengine read global config failed");
    return -1;
  }

  if (taosCreateTierDirectory() != 0) {
    dError("TDengine init tier directory failed");
    return -1;
  }

  tsPrintGlobalConfig();
  dPrint("Server IP address is:%s", tsInternalIp);

  signal(SIGPIPE, SIG_IGN);

  dnodeInitModules();
  pthread_mutex_init(&dmutex, ((void*)0));

  dPrint("starting to initialize TDengine ...");

  vnodeInitQHandle();
  if (dnodeInitSystemSpec() < 0) {
    return -1;
  }

  for (int mod = 0; mod < TSDB_MOD_MAX; ++mod) {
    if (tsModule[mod].num != 0 && tsModule[mod].initFp) {
      if ((*tsModule[mod].initFp)() != 0) {
        dError("TDengine initialization failed");
        return -1;
      }
    }
  }

  if (vnodeInitSystem() != 0) {
    dError("TDengine vnodes initialization failed");
    return -1;
  }

  monitorCountReqFp = dnodeCountRequest;

  dnodeStartModuleSpec();

  dPrint("TDengine is initialized successfully");

  return 0;
}
