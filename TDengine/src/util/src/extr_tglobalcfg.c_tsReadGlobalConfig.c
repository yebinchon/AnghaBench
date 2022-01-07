
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cfgStatus; } ;
typedef TYPE_1__ SGlobalConfig ;
typedef int FILE ;


 scalar_t__ TSDB_CFG_CSTATUS_FILE ;
 char* configDir ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int getline (char**,size_t*,int *) ;
 int pError (char*) ;
 int paGetToken (char*,char**,int*) ;
 int sprintf (char*,char*,char*) ;
 int strcpy (scalar_t__*,scalar_t__*) ;
 scalar_t__ strlen (scalar_t__*) ;
 int taosGetPrivateIp (scalar_t__*) ;
 int taosGetSystemInfo () ;
 int tfree (char*) ;
 TYPE_1__* tsGetConfigOption (char*) ;
 int tsInitGlobalConfig () ;
 scalar_t__* tsInternalIp ;
 scalar_t__* tsLocalIp ;
 scalar_t__* tsMasterIp ;
 int tsNumOfCores ;
 scalar_t__* tsPrivateIp ;
 scalar_t__* tsPublicIp ;
 int tsReadConfigOption (char*,char*) ;
 int tsReadGlobalConfigSpec () ;
 scalar_t__* tsSecondIp ;
 int tsSetLocale () ;
 int tsSetTimeZone () ;
 int tsVersion ;
 scalar_t__ tscEmbedded ;
 char* version ;

bool tsReadGlobalConfig() {
  tsInitGlobalConfig();

  FILE * fp;
  char * line, *option, *value, *value1;
  size_t len;
  int olen, vlen, vlen1;
  char fileName[128];

  sprintf(fileName, "%s/taos.cfg", configDir);
  fp = fopen(fileName, "r");
  if (fp == ((void*)0)) {
  } else {
    line = ((void*)0);
    while (!feof(fp)) {
      tfree(line);
      line = option = value = ((void*)0);
      len = olen = vlen = 0;

      getline(&line, &len, fp);
      if (line == ((void*)0)) break;

      paGetToken(line, &option, &olen);
      if (olen == 0) continue;
      option[olen] = 0;

      paGetToken(option + olen + 1, &value, &vlen);
      if (vlen == 0) continue;
      value[vlen] = 0;



      paGetToken(value + vlen + 1, &value1, &vlen1);

      tsReadConfigOption(option, value);
    }

    tfree(line);
    fclose(fp);
  }

  tsReadGlobalConfigSpec();

  if (tsPrivateIp[0] == 0) {
    taosGetPrivateIp(tsPrivateIp);
  }

  if (tsPublicIp[0] == 0) {
    strcpy(tsPublicIp, tsPrivateIp);
  }

  if (tsInternalIp[0] == 0) {
    strcpy(tsInternalIp, tsPrivateIp);
  }

  if (tsLocalIp[0] == 0) {
    strcpy(tsLocalIp, tsPrivateIp);
  }

  if (tsMasterIp[0] == 0) {
    strcpy(tsMasterIp, tsPrivateIp);
  }

  if (tsSecondIp[0] == 0) {
    strcpy(tsSecondIp, tsMasterIp);
  }

  taosGetSystemInfo();

  tsSetLocale();

  SGlobalConfig *cfg_timezone = tsGetConfigOption("timezone");
  if (cfg_timezone && cfg_timezone->cfgStatus == TSDB_CFG_CSTATUS_FILE) {
    tsSetTimeZone();
  }

  if (tsNumOfCores <= 0) {
    tsNumOfCores = 1;
  }

  if (strlen(tsPrivateIp) == 0) {
    pError("privateIp is null");
    return 0;
  }

  if (tscEmbedded) {
    strcpy(tsLocalIp, tsPrivateIp);
  }

  tsVersion = 0;
  for (int i = 0; i < 10; i++) {
    if (version[i] >= '0' && version[i] <= '9') {
      tsVersion = tsVersion * 10 + (version[i] - '0');
    } else if (version[i] == 0) {
      break;
    }
  }
  tsVersion = 10 * tsVersion;

  return 1;
}
