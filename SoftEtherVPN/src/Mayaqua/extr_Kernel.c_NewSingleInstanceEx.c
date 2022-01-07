
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
struct TYPE_4__ {void* pData; int Name; } ;
typedef TYPE_1__ INSTANCE ;


 int CopyStr (char*) ;
 int HashInstanceName (char*,int,char*) ;
 int HashInstanceNameLocal (char*,int,char*) ;
 int MAX_SIZE ;
 void* OSNewSingleInstance (char*) ;
 TYPE_1__* ZeroMalloc (int) ;

INSTANCE *NewSingleInstanceEx(char *instance_name, bool user_local)
{
 char name[MAX_SIZE];
 INSTANCE *ret;
 void *data;

 if (instance_name != ((void*)0))
 {
  if (user_local == 0)
  {
   HashInstanceName(name, sizeof(name), instance_name);
  }
  else
  {
   HashInstanceNameLocal(name, sizeof(name), instance_name);
  }

  data = OSNewSingleInstance(name);
 }
 else
 {
  data = OSNewSingleInstance(((void*)0));
 }

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(INSTANCE));
 if (instance_name != ((void*)0))
 {
  ret->Name = CopyStr(instance_name);
 }

 ret->pData = data;

 return ret;
}
