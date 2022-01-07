
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int (* p_bond_cancel_cmpl_callback ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ api; } ;


 int BTM_ERR_PROCESSING ;



 int STREAM_TO_UINT8 (int,int*) ;
 TYPE_2__ btm_cb ;
 int btm_sec_bond_cancel_complete () ;
 int stub1 (int ) ;

void btm_create_conn_cancel_complete (UINT8 *p)
{
    UINT8 status;

    STREAM_TO_UINT8 (status, p);






    switch (status) {
    case 128:

        btm_sec_bond_cancel_complete();

        break;
    case 130:
    case 129:
    default:

        if (btm_cb.api.p_bond_cancel_cmpl_callback) {
            btm_cb.api.p_bond_cancel_cmpl_callback(BTM_ERR_PROCESSING);
        }
        break;
    }
}
