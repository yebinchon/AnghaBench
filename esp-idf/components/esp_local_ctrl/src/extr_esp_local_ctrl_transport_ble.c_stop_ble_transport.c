
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocomm_t ;


 int protocomm_ble_stop (int *) ;

__attribute__((used)) static void stop_ble_transport(protocomm_t *pc)
{
    protocomm_ble_stop(pc);
}
