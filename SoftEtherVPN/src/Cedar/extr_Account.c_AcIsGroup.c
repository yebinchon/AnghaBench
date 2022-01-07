
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USERGROUP ;
typedef int HUB ;


 int * AcGetGroup (int *,char*) ;
 scalar_t__ NO_ACCOUNT_DB (int *) ;
 int ReleaseGroup (int *) ;

bool AcIsGroup(HUB *h, char *name)
{
 USERGROUP *g;

 if (h == ((void*)0) || name == ((void*)0) || NO_ACCOUNT_DB(h))
 {
  return 0;
 }

 g = AcGetGroup(h, name);
 if (g == ((void*)0))
 {
  return 0;
 }
 ReleaseGroup(g);

 return 1;
}
