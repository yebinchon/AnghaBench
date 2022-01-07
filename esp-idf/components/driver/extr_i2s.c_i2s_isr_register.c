
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t i2s_port_t ;
typedef int i2s_isr_handle_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int irq; } ;


 int esp_intr_alloc (int ,int,void (*) (void*),void*,int *) ;
 TYPE_1__* i2s_periph_signal ;

__attribute__((used)) static esp_err_t i2s_isr_register(i2s_port_t i2s_num, int intr_alloc_flags, void (*fn)(void*), void * arg, i2s_isr_handle_t *handle)
{
    return esp_intr_alloc(i2s_periph_signal[i2s_num].irq, intr_alloc_flags, fn, arg, handle);
}
