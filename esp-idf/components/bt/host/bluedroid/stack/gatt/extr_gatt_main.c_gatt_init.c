
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int app_start_hdl; int gap_start_hdl; int gatt_start_hdl; } ;
struct TYPE_8__ {int max_transmit; int rtrans_tout; int mon_tout; int mps; int tx_win_sz; int mode; } ;
struct TYPE_10__ {int default_idle_tout; TYPE_2__ hdl_cfg; int pL2CA_FixedCong_Cb; int pL2CA_FixedData_Cb; int pL2CA_FixedConn_Cb; TYPE_1__ fixed_chnl_opts; void* pending_new_srv_start_q; void* srv_chg_clt_q; void* sign_op_queue; int def_mtu_size; int trace_level; } ;
typedef TYPE_3__ tL2CAP_FIXED_CHNL_REG ;
typedef int tL2CAP_APPL_INFO ;
typedef int tGATT_CB ;
struct TYPE_11__ {int local_mtu; } ;


 int BTM_SEC_NONE ;
 int BTM_SEC_SERVICE_ATT ;
 int BTM_SetSecurityLevel (int ,char*,int ,int ,int ,int ,int ) ;
 int BT_PSM_ATT ;
 int BT_TRACE_LEVEL_NONE ;
 int FALSE ;
 int GATT_APP_START_HANDLE ;
 int GATT_DEF_BLE_MTU_SIZE ;
 int GATT_GAP_START_HANDLE ;
 int GATT_GATT_START_HANDLE ;
 int GATT_INITIAL_TRACE_LEVEL ;
 int GATT_MAX_MTU_SIZE ;
 int GATT_TRACE_ERROR (char*) ;
 int L2CAP_ATT_CID ;
 int L2CAP_FCR_BASIC_MODE ;
 int L2CA_Register (int ,int *) ;
 int L2CA_RegisterFixedChannel (int ,TYPE_3__*) ;
 int QUEUE_SIZE_MAX ;
 int TRUE ;
 int dyn_info ;
 void* fixed_queue_new (int ) ;
 TYPE_3__ gatt_cb ;
 int * gatt_cb_ptr ;
 TYPE_5__ gatt_default ;
 int gatt_le_cong_cback ;
 int gatt_le_connect_cback ;
 int gatt_le_data_ind ;
 int gatt_profile_db_init () ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void gatt_init (void)
{
    tL2CAP_FIXED_CHNL_REG fixed_reg;



    memset (&gatt_cb, 0, sizeof(tGATT_CB));
    memset (&fixed_reg, 0, sizeof(tL2CAP_FIXED_CHNL_REG));




    gatt_cb.trace_level = BT_TRACE_LEVEL_NONE;

    gatt_cb.def_mtu_size = GATT_DEF_BLE_MTU_SIZE;
    gatt_cb.sign_op_queue = fixed_queue_new(QUEUE_SIZE_MAX);
    gatt_cb.srv_chg_clt_q = fixed_queue_new(QUEUE_SIZE_MAX);
    gatt_cb.pending_new_srv_start_q = fixed_queue_new(QUEUE_SIZE_MAX);

    fixed_reg.fixed_chnl_opts.mode = L2CAP_FCR_BASIC_MODE;
    fixed_reg.fixed_chnl_opts.max_transmit = 0xFF;
    fixed_reg.fixed_chnl_opts.rtrans_tout = 2000;
    fixed_reg.fixed_chnl_opts.mon_tout = 12000;
    fixed_reg.fixed_chnl_opts.mps = 670;
    fixed_reg.fixed_chnl_opts.tx_win_sz = 1;

    fixed_reg.pL2CA_FixedConn_Cb = gatt_le_connect_cback;
    fixed_reg.pL2CA_FixedData_Cb = gatt_le_data_ind;
    fixed_reg.pL2CA_FixedCong_Cb = gatt_le_cong_cback;
    fixed_reg.default_idle_tout = 0xffff;

    L2CA_RegisterFixedChannel (L2CAP_ATT_CID, &fixed_reg);



    if (!L2CA_Register (BT_PSM_ATT, (tL2CAP_APPL_INFO *) &dyn_info)) {
        GATT_TRACE_ERROR ("ATT Dynamic Registration failed");
    }

    BTM_SetSecurityLevel(TRUE, "", BTM_SEC_SERVICE_ATT, BTM_SEC_NONE, BT_PSM_ATT, 0, 0);
    BTM_SetSecurityLevel(FALSE, "", BTM_SEC_SERVICE_ATT, BTM_SEC_NONE, BT_PSM_ATT, 0, 0);

    gatt_cb.hdl_cfg.gatt_start_hdl = GATT_GATT_START_HANDLE;
    gatt_cb.hdl_cfg.gap_start_hdl = GATT_GAP_START_HANDLE;
    gatt_cb.hdl_cfg.app_start_hdl = GATT_APP_START_HANDLE;

    gatt_profile_db_init();


    gatt_default.local_mtu = GATT_MAX_MTU_SIZE;
}
