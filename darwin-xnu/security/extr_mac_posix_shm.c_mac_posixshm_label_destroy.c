
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshminfo {int * pshm_label; } ;


 int mac_posixshm_label_free (int *) ;

void
mac_posixshm_label_destroy(struct pshminfo *pshm)
{

 mac_posixshm_label_free(pshm->pshm_label);
 pshm->pshm_label = ((void*)0);
}
