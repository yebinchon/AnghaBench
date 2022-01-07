
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERIPH_AES_MODULE ;
 int aes_spinlock ;
 int periph_module_enable (int ) ;
 int portENTER_CRITICAL (int *) ;

void esp_aes_acquire_hardware( void )
{
    portENTER_CRITICAL(&aes_spinlock);


    periph_module_enable(PERIPH_AES_MODULE);
}
