
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef int CT ;


 int CmdPrintStatusToListViewEx (int *,int *,int) ;

void CmdPrintStatusToListView(CT *ct, RPC_CLIENT_GET_CONNECTION_STATUS *s)
{
 CmdPrintStatusToListViewEx(ct, s, 0);
}
