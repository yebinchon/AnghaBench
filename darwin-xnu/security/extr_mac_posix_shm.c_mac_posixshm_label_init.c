
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshminfo {int pshm_label; } ;


 int mac_posixshm_label_alloc () ;

void
mac_posixshm_label_init(struct pshminfo *pshm)
{

 pshm->pshm_label = mac_posixshm_label_alloc();
}
