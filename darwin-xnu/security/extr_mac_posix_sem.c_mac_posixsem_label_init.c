
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int psem_label; } ;


 int mac_posixsem_label_alloc () ;

void
mac_posixsem_label_init(struct pseminfo *psem)
{

 psem->psem_label = mac_posixsem_label_alloc();
}
