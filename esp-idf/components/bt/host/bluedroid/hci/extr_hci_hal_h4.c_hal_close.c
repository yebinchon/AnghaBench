
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * hci_h4_thread ;
 int hci_hal_env_deinit () ;

__attribute__((used)) static void hal_close(void)
{
    hci_hal_env_deinit();

    hci_h4_thread = ((void*)0);
}
