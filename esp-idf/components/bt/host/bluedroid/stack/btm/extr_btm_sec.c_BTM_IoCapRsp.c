
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tBTM_OOB_DATA ;
typedef scalar_t__ tBTM_IO_CAP ;
typedef int tBTM_AUTH_REQ ;
struct TYPE_3__ {int loc_auth_req; scalar_t__ loc_io_caps; } ;
struct TYPE_4__ {scalar_t__ pairing_state; int pairing_flags; TYPE_1__ devcb; int pairing_bda; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_AUTH_DD_BOND ;
 int BTM_AUTH_YN_BIT ;
 scalar_t__ BTM_IO_CAP_MAX ;
 scalar_t__ BTM_OOB_UNKNOWN ;
 int BTM_PAIR_FLAGS_WE_STARTED_DD ;
 scalar_t__ BTM_PAIR_STATE_WAIT_LOCAL_IOCAPS ;
 int BTM_TRACE_EVENT (char*,int ,scalar_t__,scalar_t__) ;
 TYPE_2__ btm_cb ;
 int btm_pair_state_descr (scalar_t__) ;
 int btsnd_hcic_io_cap_req_reply (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ memcmp (int ,int ,int ) ;

void BTM_IoCapRsp(BD_ADDR bd_addr, tBTM_IO_CAP io_cap, tBTM_OOB_DATA oob, tBTM_AUTH_REQ auth_req)
{

    BTM_TRACE_EVENT ("BTM_IoCapRsp: state: %s  oob: %d io_cap: %d\n",
                     btm_pair_state_descr(btm_cb.pairing_state), oob, io_cap);

    if ( (btm_cb.pairing_state != BTM_PAIR_STATE_WAIT_LOCAL_IOCAPS)
            || (memcmp (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN) != 0) ) {
        return;
    }

    if (oob < BTM_OOB_UNKNOWN && io_cap < BTM_IO_CAP_MAX) {
        btm_cb.devcb.loc_auth_req = auth_req;
        btm_cb.devcb.loc_io_caps = io_cap;

        if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD) {
            auth_req = (BTM_AUTH_DD_BOND | (auth_req & BTM_AUTH_YN_BIT));
        }

        btsnd_hcic_io_cap_req_reply (bd_addr, io_cap, oob, auth_req);
    }
}
