
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int a ;
typedef int VECTOR256 ;


 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 unsigned int YMM_MAX ;
 int bcopy (int *,int *,int) ;
 int sprintf (char*,char*,int ,int ,int ,int ) ;

void
vec256_to_string(VECTOR256 *vec, char *buf) {
 unsigned int vec_idx = 0;
 unsigned int buf_idx = 0;
 int ret = 0;

 for (vec_idx = 0; vec_idx < YMM_MAX; vec_idx++) {
  uint64_t a[4];
  bcopy(&vec[vec_idx], &a[0], sizeof(a));
  ret = sprintf(
   buf + buf_idx,
   "0x%016llx:%016llx:%016llx:%016llx\n",
   a[0], a[1], a[2], a[3]
  );
  T_QUIET; T_ASSERT_POSIX_SUCCESS(ret, "sprintf()");
  buf_idx += ret;
 }
}
