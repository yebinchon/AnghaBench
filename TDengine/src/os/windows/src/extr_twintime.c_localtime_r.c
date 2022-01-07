
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int localtime_s (struct tm*,int const*) ;

struct tm *localtime_r(const time_t *timep, struct tm *result) {
  localtime_s(result, timep);
  return result;
}
