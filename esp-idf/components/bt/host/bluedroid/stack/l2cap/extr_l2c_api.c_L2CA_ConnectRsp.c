
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int L2CA_ErtmConnectRsp (int ,int ,int ,int ,int ,int *) ;

BOOLEAN L2CA_ConnectRsp (BD_ADDR p_bd_addr, UINT8 id, UINT16 lcid,
                         UINT16 result, UINT16 status)
{
    return L2CA_ErtmConnectRsp (p_bd_addr, id, lcid, result, status, ((void*)0));
}
