
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cluster_type_t ;


 int boot_cluster ;

cluster_type_t
ml_get_boot_cluster(void)
{
 return boot_cluster;
}
