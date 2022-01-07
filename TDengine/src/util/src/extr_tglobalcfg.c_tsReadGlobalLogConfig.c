
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
typedef int FILE ;


 char* configDir ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int getline (char**,size_t*,int *) ;
 char* logDir ;
 int mdebugFlag ;
 int paGetToken (char*,char**,int*) ;
 int printf (char*,char*) ;
 int sdbDebugFlag ;
 int sprintf (char*,char*,char*) ;
 int strcpy (char*,char*) ;
 int tfree (char*) ;
 int tsInitGlobalConfig () ;
 int tsReadLogOption (char*,char*) ;
 int wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

void tsReadGlobalLogConfig() {
  tsInitGlobalConfig();

  FILE * fp;
  char * line, *option, *value;
  size_t len;
  int olen, vlen;
  char fileName[128];

  mdebugFlag = 135;
  sdbDebugFlag = 135;

  wordexp_t full_path;
  wordexp(configDir, &full_path, 0);
  if (full_path.we_wordv != ((void*)0) && full_path.we_wordv[0] != ((void*)0)) {
    strcpy(configDir, full_path.we_wordv[0]);
  } else {
    printf("configDir:%s not there, use default value: /etc/taos", configDir);
    strcpy(configDir, "/etc/taos");
  }
  wordfree(&full_path);

  tsReadLogOption("logDir", logDir);
  sprintf(fileName, "%s/taos.cfg", configDir);
  fp = fopen(fileName, "r");
  if (fp == ((void*)0)) {
    printf("\noption file:%s not found, all options are set to system default\n", fileName);
    return;
  }

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

    tsReadLogOption(option, value);
  }

  tfree(line);
  fclose(fp);
}
