
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a ;
 int c ;

__attribute__((used)) static void test_storage_class() {
    static a;
    auto b;
    register c;
    static int d;
    auto int e;
    register int f;
}
