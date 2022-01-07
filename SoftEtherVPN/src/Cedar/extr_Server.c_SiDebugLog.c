
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * DebugLog; } ;
typedef TYPE_1__ SERVER ;


 int WriteTinyLog (int *,char*) ;

void SiDebugLog(SERVER *s, char *msg)
{

 if (s == ((void*)0) || msg == ((void*)0))
 {
  return;
 }

 if (s->DebugLog != ((void*)0))
 {
  WriteTinyLog(s->DebugLog, msg);
 }
}
