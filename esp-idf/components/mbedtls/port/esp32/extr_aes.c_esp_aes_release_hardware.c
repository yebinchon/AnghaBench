
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERIPH_AES_MODULE ;
 int aes_spinlock ;
 int periph_module_disable (int ) ;
 int portEXIT_CRITICAL (int *) ;

void esp_aes_release_hardware( void )
{

    periph_module_disable(PERIPH_AES_MODULE);

    portEXIT_CRITICAL(&aes_spinlock);
}
