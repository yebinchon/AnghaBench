
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct seg_tx {int seq_auth; int dst; scalar_t__ nack_count; scalar_t__ seg_n; } ;


 int ARRAY_SIZE (struct seg_tx*) ;
 struct seg_tx* seg_tx ;

__attribute__((used)) static struct seg_tx *seg_tx_lookup(u16_t seq_zero, u8_t obo, u16_t addr)
{
    struct seg_tx *tx;
    int i;

    for (i = 0; i < ARRAY_SIZE(seg_tx); i++) {
        tx = &seg_tx[i];

        if ((tx->seq_auth & 0x1fff) != seq_zero) {
            continue;
        }

        if (tx->dst == addr) {
            return tx;
        }






        if (obo && tx->nack_count == tx->seg_n + 1) {
            tx->dst = addr;
            return tx;
        }
    }

    return ((void*)0);
}
