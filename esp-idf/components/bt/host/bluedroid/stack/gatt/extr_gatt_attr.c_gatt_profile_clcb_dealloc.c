
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_PROFILE_CLCB ;


 int memset (int *,int ,int) ;

void gatt_profile_clcb_dealloc (tGATT_PROFILE_CLCB *p_clcb)
{
    memset(p_clcb, 0, sizeof(tGATT_PROFILE_CLCB));
}
