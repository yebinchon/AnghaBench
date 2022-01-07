
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTU_ShutDown () ;
 int hci_shut_down () ;

__attribute__((used)) static void bte_main_disable(void)
{







    hci_shut_down();

    BTU_ShutDown();
}
