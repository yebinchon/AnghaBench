
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_test {int dummy; } ;


 int TEST_FAULT (struct kasan_test*) ;
 int TEST_NOFAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int test_strlcpy(struct kasan_test *t)
{
 TEST_START(t);
 char a1[8];


 strlcpy(a1, "small", 8);
 strlcpy(a1, "looooonnnnggg", 8);

 TEST_FAULT(t);
 strlcpy(a1, "looooooooonnnnggg", 9);
 TEST_NOFAULT(t);

 return 0;
}
