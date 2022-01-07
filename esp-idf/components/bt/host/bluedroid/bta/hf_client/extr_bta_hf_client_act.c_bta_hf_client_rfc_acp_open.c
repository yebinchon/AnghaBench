
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int port_handle; } ;
struct TYPE_9__ {TYPE_2__ rfc; } ;
typedef TYPE_3__ tBTA_HF_CLIENT_DATA ;
typedef int UINT16 ;
struct TYPE_7__ {int conn_handle; int peer_addr; int colli_timer; scalar_t__ colli_tmr_on; int serv_handle; int role; } ;
struct TYPE_10__ {TYPE_1__ scb; } ;
typedef int BD_ADDR ;


 int APPL_TRACE_DEBUG (char*,int,...) ;
 int BTA_HF_CLIENT_ACP ;
 scalar_t__ FALSE ;
 int PORT_CheckConnection (int ,int ,int *) ;
 int PORT_SUCCESS ;
 scalar_t__ bdcmp (int ,int ) ;
 int bdcpy (int ,int ) ;
 TYPE_6__ bta_hf_client_cb ;
 int bta_hf_client_do_disc () ;
 int bta_hf_client_resume_open () ;
 int bta_hf_client_rfc_open (TYPE_3__*) ;
 int bta_sys_free_timer (int *) ;

void bta_hf_client_rfc_acp_open(tBTA_HF_CLIENT_DATA *p_data)
{
    UINT16 lcid;
    BD_ADDR dev_addr;
    int status;


    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_ACP;

    APPL_TRACE_DEBUG ("bta_hf_client_rfc_acp_open: serv_handle = %d rfc.port_handle = %d",
                      bta_hf_client_cb.scb.serv_handle, p_data->rfc.port_handle);


    if (PORT_SUCCESS != (status = PORT_CheckConnection(p_data->rfc.port_handle, dev_addr, &lcid))) {
        APPL_TRACE_DEBUG ("bta_hf_client_rfc_acp_open error PORT_CheckConnection returned status %d", status);
    }


    if (bta_hf_client_cb.scb.colli_tmr_on) {

        bta_hf_client_cb.scb.colli_tmr_on = FALSE;
        bta_sys_free_timer (&bta_hf_client_cb.scb.colli_timer);

        if (bdcmp (dev_addr, bta_hf_client_cb.scb.peer_addr) == 0) {


        } else {

            bta_hf_client_resume_open ();
        }
    }

    bdcpy (bta_hf_client_cb.scb.peer_addr, dev_addr);
    bta_hf_client_cb.scb.conn_handle = p_data->rfc.port_handle;


    bta_hf_client_do_disc();


    bta_hf_client_rfc_open(p_data);
}
