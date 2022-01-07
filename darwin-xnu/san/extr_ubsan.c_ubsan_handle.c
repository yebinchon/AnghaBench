
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsan_violation {int loc; } ;


 int panic (char*,char*) ;
 int printf (char*,char*) ;
 scalar_t__ ubsan_format (struct ubsan_violation*,char*,size_t const) ;
 int ubsan_loc_acquire (int ) ;
 int ubsan_log_append (struct ubsan_violation*) ;
 scalar_t__ ubsan_print ;

__attribute__((used)) static void
ubsan_handle(struct ubsan_violation *v, bool fatal)
{
 const size_t sz = 256;
 static char buf[sz];
 size_t n = 0;
 buf[0] = '\0';

 if (!ubsan_loc_acquire(v->loc)) {

  return;
 }

 ubsan_log_append(v);

 if (ubsan_print || fatal) {
  n += ubsan_format(v, buf+n, sz-n);
 }

 if (ubsan_print) {
  printf("UBSan: %s", buf);
 }

 if (fatal) {
  panic("UBSan: %s", buf);
 }
}
