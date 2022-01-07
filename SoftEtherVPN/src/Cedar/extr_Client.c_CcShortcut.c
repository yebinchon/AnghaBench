
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int CcConnectRpcEx (char*,int *,int *,int *,int *,int *,int,int ) ;
 int ERR_INVALID_PARAMETER ;

UINT CcShortcut(UCHAR *key)
{
 UINT ret;

 if (key == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 CcConnectRpcEx("localhost", ((void*)0), ((void*)0), ((void*)0), key, &ret, 0, 0);

 return ret;
}
