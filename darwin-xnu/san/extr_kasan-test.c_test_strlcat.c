
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_test {int dummy; } ;


 int TEST_FAULT (struct kasan_test*) ;
 int TEST_NOFAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static int test_strlcat(struct kasan_test *t)
{
 TEST_START(t);
 char a1[9] = {};


 strlcat(a1, "abcd", 9);
 strlcat(a1, "efgh", 9);
 strlcat(a1, "ijkl", 9);
 a1[0] = '\0';
 strlcat(a1, "looooonnnnggg", 9);

 a1[0] = '\0';
 TEST_FAULT(t);
 strlcat(a1, "looooonnnnggg", 10);
 TEST_NOFAULT(t);

 return a1[0] != 'l';
}
