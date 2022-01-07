
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_type_date_t ;
typedef int gboolean ;


 scalar_t__ network_mysqld_type_date_date_is_valid (int *) ;
 scalar_t__ network_mysqld_type_date_time_is_valid (int *) ;

gboolean network_mysqld_type_date_is_valid(network_mysqld_type_date_t *date) {
 return network_mysqld_type_date_time_is_valid(date) &&
  network_mysqld_type_date_date_is_valid(date);
}
