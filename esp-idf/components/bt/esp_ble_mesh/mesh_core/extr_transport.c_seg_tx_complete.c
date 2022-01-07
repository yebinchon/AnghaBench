
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seg_tx {int cb_data; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* end ) (int,int ) ;} ;


 int seg_tx_reset (struct seg_tx*) ;
 int stub1 (int,int ) ;

__attribute__((used)) static inline void seg_tx_complete(struct seg_tx *tx, int err)
{
    if (tx->cb && tx->cb->end) {
        tx->cb->end(err, tx->cb_data);
    }

    seg_tx_reset(tx);
}
