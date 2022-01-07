
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cluster_type_t ;


 int CLUSTER_TYPE_SMP ;

cluster_type_t
ml_get_boot_cluster(void)
{
 return CLUSTER_TYPE_SMP;
}
