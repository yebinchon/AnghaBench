
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int UINT16 ;
struct TYPE_2__ {int handle_char_e2p; int conn_id; } ;


 int BTA_GATTS_HandleValueIndication (int ,int ,int,int *,int) ;
 TYPE_1__ blufi_env ;

__attribute__((used)) static void btc_blufi_send_notify(uint8_t *pkt, int pkt_len)
{
    UINT16 conn_id = blufi_env.conn_id;
    UINT16 attr_id = blufi_env.handle_char_e2p;
    bool rsp = 0;

    BTA_GATTS_HandleValueIndication(conn_id, attr_id, pkt_len,
                                     pkt, rsp);
}
