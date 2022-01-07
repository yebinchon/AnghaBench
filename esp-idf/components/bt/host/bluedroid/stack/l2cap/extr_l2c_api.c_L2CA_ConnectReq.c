
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef int BD_ADDR ;


 int L2CA_ErtmConnectReq (int ,int ,int *) ;

UINT16 L2CA_ConnectReq (UINT16 psm, BD_ADDR p_bd_addr)
{
    return L2CA_ErtmConnectReq (psm, p_bd_addr, ((void*)0));
}
