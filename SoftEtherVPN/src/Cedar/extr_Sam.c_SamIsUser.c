
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB ;


 int AcIsUser (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;

bool SamIsUser(HUB *h, char *username)
{
 bool b;

 if (h == ((void*)0) || username == ((void*)0))
 {
  return 0;
 }

 AcLock(h);
 {
  b = AcIsUser(h, username);
 }
 AcUnlock(h);

 return b;
}
