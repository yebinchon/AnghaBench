
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spi_transaction_t ;
struct TYPE_2__ {size_t used_transaction_count; int * transactions; } ;


 size_t SDSPI_TRANSACTION_COUNT ;
 int assert (int) ;
 TYPE_1__* s_slots ;

__attribute__((used)) static spi_transaction_t* get_transaction(int slot)
{
    size_t used_transaction_count = s_slots[slot].used_transaction_count;
    assert(used_transaction_count < SDSPI_TRANSACTION_COUNT);
    spi_transaction_t* ret = &s_slots[slot].transactions[used_transaction_count];
    ++s_slots[slot].used_transaction_count;
    return ret;
}
