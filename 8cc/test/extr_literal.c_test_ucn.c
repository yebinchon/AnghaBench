
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (char,int) ;
 int expect_string (char*,char*) ;

__attribute__((used)) static void test_ucn() {
    expect('$', L'\u0024');
    expect('$', L'\U00000024');
    expect_string("$", "\u0024");
    expect_string("$", "\U00000024");
    expect('X', L'X');
    expect('X', U'X');
    expect('X', u'X');
}
