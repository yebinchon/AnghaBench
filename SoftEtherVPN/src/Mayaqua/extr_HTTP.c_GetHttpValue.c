
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ValueList; } ;
struct TYPE_7__ {char* Name; } ;
typedef TYPE_1__ HTTP_VALUE ;
typedef TYPE_2__ HTTP_HEADER ;


 TYPE_1__* Search (int ,TYPE_1__*) ;

HTTP_VALUE *GetHttpValue(HTTP_HEADER *header, char *name)
{
 HTTP_VALUE *v, t;

 if (header == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 t.Name = name;
 v = Search(header->ValueList, &t);
 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 return v;
}
