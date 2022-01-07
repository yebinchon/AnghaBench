
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAPSLIST ;
typedef int CAPS ;


 int AddCaps (int *,int *) ;
 int * NewCaps (char*,int) ;

void AddCapsBool(CAPSLIST *caps, char *name, bool b)
{
 CAPS *c;

 if (caps == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 c = NewCaps(name, b == 0 ? 0 : 1);
 AddCaps(caps, c);
}
