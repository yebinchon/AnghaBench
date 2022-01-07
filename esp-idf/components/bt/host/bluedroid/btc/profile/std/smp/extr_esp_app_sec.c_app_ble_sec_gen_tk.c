
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int random () ;

UINT32 app_ble_sec_gen_tk(void)
{

    return (100000 + (random() % 900000));
}
