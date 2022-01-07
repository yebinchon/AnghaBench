
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tGAP_CB ;
typedef int bt_status_t ;
struct TYPE_3__ {int trace_level; } ;


 int BT_STATUS_NOMEM ;
 int BT_STATUS_SUCCESS ;
 int BT_TRACE_LEVEL_NONE ;
 int GAP_INITIAL_TRACE_LEVEL ;
 int gap_attr_db_init () ;
 TYPE_1__ gap_cb ;
 int * gap_cb_ptr ;
 int gap_conn_init () ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

bt_status_t GAP_Init(void)
{

    gap_cb_ptr = (tGAP_CB *)osi_malloc(sizeof(tGAP_CB));
    if (!gap_cb_ptr) {
        return BT_STATUS_NOMEM;
    }


    memset (&gap_cb, 0, sizeof (tGAP_CB));




    gap_cb.trace_level = BT_TRACE_LEVEL_NONE;



    gap_conn_init();



    gap_attr_db_init();


    return BT_STATUS_SUCCESS;
}
