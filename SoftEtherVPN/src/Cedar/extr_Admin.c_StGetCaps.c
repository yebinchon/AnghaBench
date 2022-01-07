
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Server; } ;
typedef int CAPSLIST ;
typedef TYPE_1__ ADMIN ;


 int ERR_NO_ERROR ;
 int FreeRpcCapsList (int *) ;
 int GetServerCapsMain (int ,int *) ;
 int Zero (int *,int) ;

UINT StGetCaps(ADMIN *a, CAPSLIST *t)
{
 FreeRpcCapsList(t);
 Zero(t, sizeof(CAPSLIST));

 GetServerCapsMain(a->Server, t);

 return ERR_NO_ERROR;
}
