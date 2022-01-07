
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiConnection ;
typedef int List ;


 char* CurrentUserName () ;
 int * FindPlacementListConnection (int,int *,char const*) ;
 int pfree (char*) ;

MultiConnection *
GetConnectionIfPlacementAccessedInXact(int flags, List *placementAccessList,
            const char *userName)
{
 MultiConnection *connection = ((void*)0);
 char *freeUserName = ((void*)0);

 if (userName == ((void*)0))
 {
  userName = freeUserName = CurrentUserName();
 }

 connection = FindPlacementListConnection(flags, placementAccessList,
            userName);

 if (freeUserName != ((void*)0))
 {
  pfree(freeUserName);
 }

 return connection;
}
