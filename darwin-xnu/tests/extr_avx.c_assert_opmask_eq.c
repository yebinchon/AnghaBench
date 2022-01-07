
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OPMASK ;


 int KARRAY_MAX ;
 int T_ASSERT_FAIL (char*) ;
 int T_LOG (char*,int ) ;
 int karray_str_buf ;
 int opmask_to_string (scalar_t__*,int ) ;

__attribute__((used)) static void
assert_opmask_eq(OPMASK *a, OPMASK *b) {
 for (int i = 0; i < KARRAY_MAX; i++) {
  if (a[i] != b[i]) {
   opmask_to_string(a, karray_str_buf);
   T_LOG("Compare failed, opmask A:\n%s", karray_str_buf);
   opmask_to_string(b, karray_str_buf);
   T_LOG("Compare failed, opmask B:\n%s", karray_str_buf);
   T_ASSERT_FAIL("opmasks not equal");
  }
 }
}
