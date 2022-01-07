
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
struct stat {int dummy; } ;
struct TYPE_7__ {int ptrLength; size_t cfgStatus; int option; scalar_t__ ptr; } ;
typedef TYPE_2__ SGlobalConfig ;


 size_t TSDB_CFG_CSTATUS_FILE ;
 int mkdir (char*,int) ;
 int pError (char*,int ,char*,int,char*) ;
 int pPrint (char*,int ,char*,int) ;
 int pWarn (char*,int ,char*,int ,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,int *) ;
 int strlen (char*) ;
 int * tsCfgStatusStr ;
 int wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

void tsReadFilePathConfig(SGlobalConfig *cfg, char *input_value) {
  int length = strlen(input_value);
  char *option = (char *)cfg->ptr;
  if (length <= 0 || length > cfg->ptrLength) {
    pError("config option:%s, input value:%s, length out of range[0, %d], use default value:%s",
           cfg->option, input_value, cfg->ptrLength, option);
  } else {
    if (cfg->cfgStatus <= TSDB_CFG_CSTATUS_FILE) {
      wordexp_t full_path;
      wordexp(input_value, &full_path, 0);
      if (full_path.we_wordv != ((void*)0) && full_path.we_wordv[0] != ((void*)0)) {
        strcpy(option, full_path.we_wordv[0]);
      }
      wordfree(&full_path);

      struct stat dirstat;
      if (stat(option, &dirstat) < 0) {
        int code = mkdir(option, 0755);
        pPrint("config option:%s, input value:%s, directory not exist, create with return code:%d",
               cfg->option, input_value, code);
      }
      cfg->cfgStatus = TSDB_CFG_CSTATUS_FILE;
    } else {
      pWarn("config option:%s, input value:%s, is configured by %s, use %s", cfg->option, input_value,
            tsCfgStatusStr[cfg->cfgStatus], option);
    }
  }
}
