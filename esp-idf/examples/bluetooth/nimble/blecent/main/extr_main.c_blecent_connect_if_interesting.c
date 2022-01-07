
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; int type; } ;
struct ble_gap_disc_desc {TYPE_1__ addr; } ;


 int BLE_OWN_ADDR_PUBLIC ;
 int DEBUG ;
 int ERROR ;
 int MODLOG_DFLT (int ,char*,int,...) ;
 int addr_str (int ) ;
 int ble_gap_connect (int ,TYPE_1__*,int,int *,int ,int *) ;
 int ble_gap_disc_cancel () ;
 int blecent_gap_event ;
 int blecent_should_connect (struct ble_gap_disc_desc const*) ;

__attribute__((used)) static void
blecent_connect_if_interesting(const struct ble_gap_disc_desc *disc)
{
    int rc;


    if (!blecent_should_connect(disc)) {
        return;
    }


    rc = ble_gap_disc_cancel();
    if (rc != 0) {
        MODLOG_DFLT(DEBUG, "Failed to cancel scan; rc=%d\n", rc);
        return;
    }





    rc = ble_gap_connect(BLE_OWN_ADDR_PUBLIC, &disc->addr, 30000, ((void*)0),
                         blecent_gap_event, ((void*)0));
    if (rc != 0) {
        MODLOG_DFLT(ERROR, "Error: Failed to connect to device; addr_type=%d "
                    "addr=%s\n",
                    disc->addr.type, addr_str(disc->addr.val));
        return;
    }
}
