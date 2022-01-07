
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ClientK; int * ClientX; } ;
typedef TYPE_1__ CLIENT_AUTH ;


 int Free (TYPE_1__*) ;
 int FreeK (int *) ;
 int FreeX (int *) ;

void CiFreeClientAuth(CLIENT_AUTH *auth)
{

 if (auth == ((void*)0))
 {
  return;
 }

 if (auth->ClientX != ((void*)0))
 {
  FreeX(auth->ClientX);
 }
 if (auth->ClientK != ((void*)0))
 {
  FreeK(auth->ClientK);
 }

 Free(auth);
}
