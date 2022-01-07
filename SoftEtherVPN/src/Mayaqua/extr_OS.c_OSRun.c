
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Run ) (char*,char*,int,int) ;} ;


 TYPE_1__* os ;
 int stub1 (char*,char*,int,int) ;

bool OSRun(char *filename, char *arg, bool hide, bool wait)
{
 return os->Run(filename, arg, hide, wait);
}
