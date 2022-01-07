
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16_t ;
struct seg_tx {int cb_data; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* start ) (int ,int,int ) ;} ;


 int stub1 (int ,int,int ) ;

__attribute__((used)) static void seg_first_send_start(u16_t duration, int err, void *user_data)
{
    struct seg_tx *tx = user_data;

    if (tx->cb && tx->cb->start) {
        tx->cb->start(duration, err, tx->cb_data);
    }
}
