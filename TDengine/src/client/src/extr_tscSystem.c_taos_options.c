
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int TSDB_OPTION ;


 int atomic_store_32 (int *,int ) ;
 scalar_t__ atomic_val_compare_exchange_32 (int *,int ,int) ;
 int sched_yield () ;
 int taos_options_imp (int ,char const*) ;
 int tscPrint (char*,int) ;

int taos_options(TSDB_OPTION option, const void *arg, ...) {
  static int32_t lock = 0;

  for (int i = 1; atomic_val_compare_exchange_32(&lock, 0, 1) != 0; ++i) {
    if (i % 1000 == 0) {
      tscPrint("haven't acquire lock after spin %d times.", i);
      sched_yield();
    }
  }

  int ret = taos_options_imp(option, (const char*)arg);

  atomic_store_32(&lock, 0);
  return ret;
}
