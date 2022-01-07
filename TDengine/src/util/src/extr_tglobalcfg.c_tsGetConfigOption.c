
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int option; } ;
typedef TYPE_1__ SGlobalConfig ;


 scalar_t__ strcasecmp (int ,char const*) ;
 TYPE_1__* tsGlobalConfig ;
 int tsGlobalConfigNum ;
 int tsInitGlobalConfig () ;

SGlobalConfig *tsGetConfigOption(const char *option) {
  tsInitGlobalConfig();
  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (strcasecmp(cfg->option, option) != 0) continue;
    return cfg;
  }
  return ((void*)0);
}
