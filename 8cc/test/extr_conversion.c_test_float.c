
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expectf (int,float) ;

__attribute__((used)) static void test_float() {
    double a = 4.0;
    float b = a;
    expectf(4, b);
}
