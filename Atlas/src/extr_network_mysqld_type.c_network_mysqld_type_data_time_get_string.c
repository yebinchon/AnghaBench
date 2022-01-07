
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nsec; int sec; int min; int hour; int days; scalar_t__ sign; } ;
typedef TYPE_1__ network_mysqld_type_time_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ network_mysqld_type_t ;
typedef int gsize ;


 int NETWORK_MYSQLD_TYPE_TIME_MIN_BUF_LEN ;
 int g_snprintf (char*,int ,char*,char*,int ,int ,int ,int ,int ) ;
 char* g_strdup_printf (char*,char*,int ,int ,int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int network_mysqld_type_data_time_get_string(network_mysqld_type_t *type, char **dst, gsize *dst_len) {
 network_mysqld_type_time_t *src = type->data;

 if (((void*)0) == type->data) return -1;

 if (((void*)0) != *dst) {

  if (*dst_len < NETWORK_MYSQLD_TYPE_TIME_MIN_BUF_LEN) {
   return -1;
  }
  *dst_len = g_snprintf(*dst, *dst_len, "%s%d %02u:%02u:%02u.%09u",
    src->sign ? "-" : "",
    src->days,
    src->hour,
    src->min,
    src->sec,
    src->nsec);
 } else {
  *dst = g_strdup_printf("%s%d %02u:%02u:%02u.%09u",
    src->sign ? "-" : "",
    src->days,
    src->hour,
    src->min,
    src->sec,
    src->nsec);
  *dst_len = strlen(*dst);
 }

 return 0;
}
