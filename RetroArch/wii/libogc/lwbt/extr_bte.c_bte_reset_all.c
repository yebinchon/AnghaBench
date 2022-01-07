
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_err; scalar_t__ num_founddevs; scalar_t__ hci_cmddone; scalar_t__ hci_inited; int * info; } ;


 int ERR_OK ;
 int bte_ctrl_reqs ;
 int bte_pcbs ;
 int btmemb_init (int *) ;
 TYPE_1__ btstate ;
 int free (int *) ;

__attribute__((used)) static void bte_reset_all()
{
 btmemb_init(&bte_pcbs);
 btmemb_init(&bte_ctrl_reqs);

 if(btstate.info!=((void*)0)) free(btstate.info);

 btstate.info = ((void*)0);
 btstate.hci_inited = 0;
 btstate.hci_cmddone = 0;
 btstate.num_founddevs = 0;
 btstate.last_err = ERR_OK;
}
