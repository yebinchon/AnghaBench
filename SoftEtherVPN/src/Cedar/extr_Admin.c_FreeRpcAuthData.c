
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int FreeAuthData (int ,void*) ;

void FreeRpcAuthData(void *authdata, UINT authtype)
{
 FreeAuthData(authtype, authdata);
}
