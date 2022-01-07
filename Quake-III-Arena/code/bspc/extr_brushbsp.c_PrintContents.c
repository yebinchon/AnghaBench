
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int name; } ;


 int Log_Write (char*,int ) ;
 TYPE_1__* contentnames ;

void PrintContents(int contents)
{
 int i;

 for (i = 0; contentnames[i].value; i++)
 {
  if (contents & contentnames[i].value)
  {
   Log_Write("%s,", contentnames[i].name);
  }
 }
}
