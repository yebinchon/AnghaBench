
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int day; int month; int year; } ;
typedef TYPE_1__ network_mysqld_type_date_t ;
typedef int gboolean ;



__attribute__((used)) static gboolean network_mysqld_type_date_date_is_valid(network_mysqld_type_date_t *date) {
 return (date->day <= 31 &&
       date->month <= 12 &&
       date->year <= 9999);
}
