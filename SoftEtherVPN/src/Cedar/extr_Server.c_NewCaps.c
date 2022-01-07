
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Value; int Name; } ;
typedef TYPE_1__ CAPS ;


 int CopyStr (char*) ;
 TYPE_1__* ZeroMalloc (int) ;

CAPS *NewCaps(char *name, UINT value)
{
 CAPS *c;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(CAPS));
 c->Name = CopyStr(name);
 c->Value = value;

 return c;
}
