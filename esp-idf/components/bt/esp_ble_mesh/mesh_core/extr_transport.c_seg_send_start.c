
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct seg_tx {int retransmit; } ;


 int SEG_RETRANSMIT_TIMEOUT (struct seg_tx*) ;
 int k_delayed_work_submit (int *,int ) ;

__attribute__((used)) static void seg_send_start(u16_t duration, int err, void *user_data)
{
    struct seg_tx *tx = user_data;





    if (err) {
        k_delayed_work_submit(&tx->retransmit,
                              SEG_RETRANSMIT_TIMEOUT(tx));
    }
}
