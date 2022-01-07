
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int BOOLEAN ;


 int SMP_SetStaticPasskey (int ,int ) ;

void BTM_BleSetStaticPasskey(BOOLEAN add, UINT32 passkey)
{

    SMP_SetStaticPasskey(add, passkey);

}
