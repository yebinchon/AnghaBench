
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int * psem_label; } ;


 int mac_posixsem_label_free (int *) ;

void
mac_posixsem_label_destroy(struct pseminfo *psem)
{

 mac_posixsem_label_free(psem->psem_label);
 psem->psem_label = ((void*)0);
}
