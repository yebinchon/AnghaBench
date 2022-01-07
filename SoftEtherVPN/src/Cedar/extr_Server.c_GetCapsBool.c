
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Value; } ;
typedef int CAPSLIST ;
typedef TYPE_1__ CAPS ;


 TYPE_1__* GetCaps (int *,char*) ;

bool GetCapsBool(CAPSLIST *caps, char *name)
{
 CAPS *c;

 if (caps == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 c = GetCaps(caps, name);
 if (c == ((void*)0))
 {
  return 0;
 }

 return c->Value == 0 ? 0 : 1;
}
