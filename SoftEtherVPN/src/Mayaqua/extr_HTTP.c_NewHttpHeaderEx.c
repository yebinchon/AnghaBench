
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ValueList; void* Version; void* Target; void* Method; } ;
typedef TYPE_1__ HTTP_HEADER ;


 int * CompareHttpValue ;
 void* CopyStr (char*) ;
 int NewListFast (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

HTTP_HEADER *NewHttpHeaderEx(char *method, char *target, char *version, bool no_sort)
{
 HTTP_HEADER *header;

 if (method == ((void*)0) || target == ((void*)0) || version == ((void*)0))
 {
  return ((void*)0);
 }

 header = ZeroMalloc(sizeof(HTTP_HEADER));

 header->Method = CopyStr(method);
 header->Target = CopyStr(target);
 header->Version = CopyStr(version);
 header->ValueList = NewListFast(no_sort ? ((void*)0) : CompareHttpValue);

 return header;
}
