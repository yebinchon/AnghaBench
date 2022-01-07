
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int thread; } ;


 TYPE_1__* moduleObj ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;
 scalar_t__ taosCheckPthreadValid (int ) ;

char *taosDisplayModuleStatus(int moduleNum) {
  static char status[256];
  int i;

  status[0] = 0;

  for (i = 1; i < moduleNum; ++i)
    if (taosCheckPthreadValid(moduleObj[i].thread)) sprintf(status + strlen(status), "%s ", moduleObj[i].name);

  if (status[0] == 0)
    sprintf(status, "all module is down");
  else
    sprintf(status, " is(are) up");

  return status;
}
