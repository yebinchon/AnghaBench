
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* Data; void* Name; } ;
typedef TYPE_1__ HTTP_VALUE ;


 void* CopyStr (char*) ;
 int Trim (void*) ;
 TYPE_1__* ZeroMalloc (int) ;

HTTP_VALUE *NewHttpValue(char *name, char *data)
{
 HTTP_VALUE *v;

 if (name == ((void*)0) || data == ((void*)0))
 {
  return ((void*)0);
 }

 v = ZeroMalloc(sizeof(HTTP_VALUE));

 v->Name = CopyStr(name);
 v->Data = CopyStr(data);

 Trim(v->Name);
 Trim(v->Data);

 return v;
}
