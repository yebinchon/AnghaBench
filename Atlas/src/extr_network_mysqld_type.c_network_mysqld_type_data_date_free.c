
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ network_mysqld_type_t ;


 int network_mysqld_type_date_free (int ) ;

__attribute__((used)) static void network_mysqld_type_data_date_free(network_mysqld_type_t *type) {
 if (((void*)0) == type) return;

 network_mysqld_type_date_free(type->data);
}
