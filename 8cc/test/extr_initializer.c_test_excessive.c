
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x2 ;
typedef int x1 ;


 int expect (int,int) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void test_excessive() {




    char x1[3] = { 1, 2, 3, 4, 5 };
    expect(3, sizeof(x1));

    char x2[3] = "abcdefg";
    expect(3, sizeof(x2));
    expect(0, strncmp("abc", x2, 3));




}
