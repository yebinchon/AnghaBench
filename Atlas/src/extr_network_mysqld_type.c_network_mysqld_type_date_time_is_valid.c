
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nsec; int sec; int min; int hour; } ;
typedef TYPE_1__ network_mysqld_type_date_t ;
typedef int gboolean ;



__attribute__((used)) static gboolean network_mysqld_type_date_time_is_valid(network_mysqld_type_date_t *date) {
 return (date->nsec < 1000000000 &&
       date->sec < 100 &&
       date->min <= 60 &&
       date->hour <= 24);
}
