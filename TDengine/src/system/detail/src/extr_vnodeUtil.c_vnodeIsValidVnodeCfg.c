
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ maxSessions; scalar_t__ cacheBlockSize; int replications; scalar_t__ daysPerFile; scalar_t__ daysToKeep; } ;
typedef TYPE_1__ SVnodeCfg ;



bool vnodeIsValidVnodeCfg(SVnodeCfg* pCfg) {
  if (pCfg == ((void*)0)) return 0;

  if (pCfg->maxSessions <= 0 || pCfg->cacheBlockSize <= 0 || pCfg->replications <= 0 || pCfg->replications > 20 ||
      pCfg->daysPerFile <= 0 || pCfg->daysToKeep <= 0) {
    return 0;
  }

  return 1;
}
