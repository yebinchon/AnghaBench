
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int conn_handle; } ;


 int BLE_ERR_REM_USER_CONN_TERM ;
 int ERROR ;
 int MODLOG_DFLT (int ,char*,int,int ) ;
 int ble_gap_terminate (int ,int ) ;
 int blecent_read_write_subscribe (struct peer const*) ;

__attribute__((used)) static void
blecent_on_disc_complete(const struct peer *peer, int status, void *arg)
{

    if (status != 0) {

        MODLOG_DFLT(ERROR, "Error: Service discovery failed; status=%d "
                    "conn_handle=%d\n", status, peer->conn_handle);
        ble_gap_terminate(peer->conn_handle, BLE_ERR_REM_USER_CONN_TERM);
        return;
    }





    MODLOG_DFLT(ERROR, "Service discovery complete; status=%d "
                "conn_handle=%d\n", status, peer->conn_handle);




    blecent_read_write_subscribe(peer);
}
