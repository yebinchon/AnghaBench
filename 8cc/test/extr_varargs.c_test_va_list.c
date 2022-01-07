
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_string (char*,int ) ;
 int fmt (char*,...) ;

__attribute__((used)) static void test_va_list() {
    expect_string("", fmt(""));
    expect_string("3", fmt("%d", 3));
    expect_string("3,1.0,6,2.0,abc", fmt("%d,%.1f,%d,%.1f,%s", 3, 1.0, 6, 2.0, "abc"));
}
