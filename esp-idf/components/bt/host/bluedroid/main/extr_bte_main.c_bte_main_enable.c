
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_ERROR (char*) ;
 int BTU_StartUp () ;
 scalar_t__ hci_start_up () ;

__attribute__((used)) static void bte_main_enable(void)
{
    APPL_TRACE_DEBUG("Enable HCI\n");
    if (hci_start_up()) {
        APPL_TRACE_ERROR("Start HCI Host Layer Failure\n");
        return;
    }


    BTU_StartUp();
}
