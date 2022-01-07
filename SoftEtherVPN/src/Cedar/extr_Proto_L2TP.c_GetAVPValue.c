
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int L2TP_PACKET ;
typedef int L2TP_AVP ;


 int * GetAVPValueEx (int *,int ,int ) ;

L2TP_AVP *GetAVPValue(L2TP_PACKET *p, UINT type)
{
 return GetAVPValueEx(p, type, 0);
}
