
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address; } ;
typedef TYPE_1__ bt_bdaddr_t ;


 int BTA_ALL_SERVICE_MASK ;
 int BTA_DmDiscover (int ,int ,int ,int ) ;
 int TRUE ;
 int bte_dm_search_services_evt ;

__attribute__((used)) static void btc_gap_bt_get_remote_services(bt_bdaddr_t *remote_bda)
{
    BTA_DmDiscover(remote_bda->address, BTA_ALL_SERVICE_MASK,
                   bte_dm_search_services_evt, TRUE);
}
