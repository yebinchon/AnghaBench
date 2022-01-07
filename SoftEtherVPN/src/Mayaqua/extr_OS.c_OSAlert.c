
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Alert ) (char*,char*) ;} ;


 TYPE_1__* os ;
 int stub1 (char*,char*) ;

void OSAlert(char *msg, char *caption)
{
 os->Alert(msg, caption);
}
