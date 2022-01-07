
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_test {int dummy; } ;


 int TEST_FAULT (struct kasan_test*) ;
 int TEST_NOFAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int test_strncpy(struct kasan_test *t)
{
 TEST_START(t);
 char a1[9];


 strncpy(a1, "small", 9);
 strncpy(a1, "looooonnnnggg", 9);

 TEST_FAULT(t);
 strncpy(a1, "looooonnnnggg", 10);
 TEST_NOFAULT(t);

 return a1[0] != 'l';
}
