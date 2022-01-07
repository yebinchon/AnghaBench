
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ASSERT_FAIL (char*) ;
 int T_LOG (char*,int ) ;
 scalar_t__ memcmp_unoptimized (void*,void*,int) ;
 int vec256_to_string (void*,int ) ;
 int vec_str_buf ;

void
assert_ymm_eq(void *a, void *b, int c) {
 if(memcmp_unoptimized(a, b, c)) {
  vec256_to_string(a, vec_str_buf);
  T_LOG("Compare failed, vector A:\n%s", vec_str_buf);
  vec256_to_string(b, vec_str_buf);
  T_LOG("Compare failed, vector B:\n%s", vec_str_buf);
  T_ASSERT_FAIL("vectors not equal");
 }
}
