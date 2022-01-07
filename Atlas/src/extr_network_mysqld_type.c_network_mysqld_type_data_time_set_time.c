
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_mysqld_type_time_t ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int network_mysqld_type_date_t ;


 int memcpy (int *,int *,int) ;
 int * network_mysqld_type_time_new () ;

__attribute__((used)) static int network_mysqld_type_data_time_set_time(network_mysqld_type_t *type, network_mysqld_type_time_t *src) {
 network_mysqld_type_date_t *dst;

 if (((void*)0) == type->data) {
  type->data = network_mysqld_type_time_new();
 }
 dst = type->data;

 memcpy(dst, src, sizeof(*src));

 return 0;
}
