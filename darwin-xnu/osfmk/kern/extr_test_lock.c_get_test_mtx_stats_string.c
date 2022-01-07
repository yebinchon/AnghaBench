
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct lck_mtx_test_stats_elem {int lock; int min; int max; int avg; int tot; int samples; } ;


 int TEST_MTX_MAX_STATS ;
 int absolutetime_to_nanoseconds (int ,int *) ;
 struct lck_mtx_test_stats_elem* lck_mtx_test_stats ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int print_test_mtx_stats_string_name (int,char*,int) ;
 int snprintf (char*,int,char*,...) ;

int
get_test_mtx_stats_string(
 char* buffer,
 int size)
{
 int string_off = 0;
 int ret = 0;

 ret = snprintf(&buffer[string_off], size, "\n");
 size -= ret;
 string_off += ret;

 int i;
 for (i = 0; i < TEST_MTX_MAX_STATS; i++) {
  struct lck_mtx_test_stats_elem* stat = &lck_mtx_test_stats[i];

  ret = snprintf(&buffer[string_off], size, "{ ");
  size -= ret;
  string_off += ret;

  lck_spin_lock(&stat->lock);
  uint64_t time;

  ret = snprintf(&buffer[string_off], size, "samples %llu, ", stat->samples);
  size -= ret;
  string_off += ret;

  absolutetime_to_nanoseconds(stat->tot, &time);
  ret = snprintf(&buffer[string_off], size, "tot %llu ns, ", time);
  size -= ret;
  string_off += ret;

  absolutetime_to_nanoseconds(stat->avg, &time);
  ret = snprintf(&buffer[string_off], size, "avg %llu ns, ", time);
  size -= ret;
  string_off += ret;

  absolutetime_to_nanoseconds(stat->max, &time);
  ret = snprintf(&buffer[string_off], size, "max %llu ns, ", time);
  size -= ret;
  string_off += ret;

  absolutetime_to_nanoseconds(stat->min, &time);
  ret = snprintf(&buffer[string_off], size, "min %llu ns", time);
  size -= ret;
  string_off += ret;

  lck_spin_unlock(&stat->lock);

  ret = snprintf(&buffer[string_off], size, " } ");
  size -= ret;
  string_off += ret;

  ret = print_test_mtx_stats_string_name(i, &buffer[string_off], size);
  size -= ret;
  string_off += ret;

  ret = snprintf(&buffer[string_off], size, "\n");
  size -= ret;
  string_off += ret;
 }

 return string_off;
}
