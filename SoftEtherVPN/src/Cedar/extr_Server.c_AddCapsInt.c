
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int CAPSLIST ;
typedef int CAPS ;


 int AddCaps (int *,int *) ;
 int * NewCaps (char*,int ) ;

void AddCapsInt(CAPSLIST *caps, char *name, UINT i)
{
 CAPS *c;

 if (caps == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 c = NewCaps(name, i);
 AddCaps(caps, c);
}
