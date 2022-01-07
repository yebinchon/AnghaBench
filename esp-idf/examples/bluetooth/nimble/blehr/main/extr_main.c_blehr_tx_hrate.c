
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xTimerHandle ;
typedef int uint8_t ;
struct os_mbuf {int dummy; } ;
typedef int hrm ;


 int assert (int) ;
 int ble_gattc_notify_custom (int ,int ,struct os_mbuf*) ;
 struct os_mbuf* ble_hs_mbuf_from_flat (int*,int) ;
 int blehr_tx_hrate_reset () ;
 int blehr_tx_hrate_stop () ;
 int conn_handle ;
 int heartrate ;
 int hrs_hrm_handle ;
 int notify_state ;

__attribute__((used)) static void
blehr_tx_hrate(xTimerHandle ev)
{
    static uint8_t hrm[2];
    int rc;
    struct os_mbuf *om;

    if (!notify_state) {
        blehr_tx_hrate_stop();
        heartrate = 90;
        return;
    }

    hrm[0] = 0x06;
    hrm[1] = heartrate;


    heartrate++;
    if (heartrate == 160) {
        heartrate = 90;
    }

    om = ble_hs_mbuf_from_flat(hrm, sizeof(hrm));
    rc = ble_gattc_notify_custom(conn_handle, hrs_hrm_handle, om);

    assert(rc == 0);

    blehr_tx_hrate_reset();
}
