
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spi_transaction_t ;
struct TYPE_2__ {size_t used_transaction_count; } ;


 int portMAX_DELAY ;
 int release_transaction (int) ;
 TYPE_1__* s_slots ;
 int spi_device_get_trans_result (int ,int **,int ) ;
 int spi_handle (int) ;

__attribute__((used)) static void wait_for_transactions(int slot)
{
    size_t used_transaction_count = s_slots[slot].used_transaction_count;
    for (size_t i = 0; i < used_transaction_count; ++i) {
        spi_transaction_t* t_out;
        spi_device_get_trans_result(spi_handle(slot), &t_out, portMAX_DELAY);
        release_transaction(slot);
    }
}
