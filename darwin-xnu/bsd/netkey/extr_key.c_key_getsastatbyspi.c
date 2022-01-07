
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sastat {int spi; } ;


 scalar_t__ key_getsastatbyspi_one (int ,struct sastat*) ;

__attribute__((used)) static int
key_getsastatbyspi (struct sastat *stat_arg,
     u_int32_t max_stat_arg,
     struct sastat *stat_res,
     u_int32_t *max_stat_res)
{
 int cur, found = 0;

 if (stat_arg == ((void*)0) ||
     stat_res == ((void*)0) ||
     max_stat_res == ((void*)0)) {
  return -1;
 }

 for (cur = 0; cur < max_stat_arg; cur++) {
  if (key_getsastatbyspi_one(stat_arg[cur].spi,
           &stat_res[found]) == 0) {
   found++;
  }
 }
 *max_stat_res = found;

 if (found) {
  return 0;
 }
 return -1;
}
