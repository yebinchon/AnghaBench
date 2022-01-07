
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPMASK ;


 unsigned int KARRAY_MAX ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int sprintf (char*,char*,unsigned int,int ,char*) ;

void
opmask_to_string(OPMASK *karray, char *buf) {
 unsigned int karray_idx = 0;
 unsigned int buf_idx = 0;
 int ret = 0;

 for(karray_idx = 0; karray_idx < KARRAY_MAX; karray_idx++) {
  ret = sprintf(
   buf + buf_idx,
   "k%d: 0x%016llx%s",
   karray_idx, karray[karray_idx],
   karray_idx < KARRAY_MAX ? "\n" : ""
  );
  T_QUIET; T_ASSERT_POSIX_SUCCESS(ret, "sprintf()");
  buf_idx += ret;
 }
}
