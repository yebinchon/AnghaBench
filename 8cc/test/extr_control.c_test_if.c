
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (char,int ) ;
 int test_if1 () ;
 int test_if10 () ;
 int test_if11 () ;
 int test_if2 () ;
 int test_if3 () ;
 int test_if4 () ;
 int test_if5 () ;
 int test_if6 () ;
 int test_if7 () ;
 int test_if8 () ;
 int test_if9 () ;

__attribute__((used)) static void test_if() {
    expect('a', test_if1());
    expect('b', test_if2());
    expect('c', test_if3());
    expect('d', test_if4());
    expect('e', test_if5());
    expect('f', test_if6());
    expect('g', test_if7());
    expect('h', test_if8());
    expect('i', test_if9());
    expect('j', test_if10());
    expect('k', test_if11());
}
