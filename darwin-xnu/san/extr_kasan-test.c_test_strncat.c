
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_test {int dummy; } ;


 int TEST_FAULT (struct kasan_test*) ;
 int TEST_NOFAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static int test_strncat(struct kasan_test *t)
{
 TEST_START(t);
 char a1[9] = {};


 strncat(a1, "abcd", 4);
 strncat(a1, "efgh", 4);

 TEST_FAULT(t);
 strncat(a1, "i", 1);
 TEST_NOFAULT(t);

 return a1[0] != 'a';
}
