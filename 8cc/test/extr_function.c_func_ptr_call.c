
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int expectf (int,float) ;
 int ptrtest1 () ;
 int ptrtest2 (int) ;
 float ptrtest3 (int) ;
 int ptrtest4 (int (*) (int),int) ;
 int stub1 () ;

__attribute__((used)) static void func_ptr_call() {
    expectf(4, ptrtest3(2));
    int (*p1)(void) = ptrtest1;
    expect(55, p1());
    int (*p2)(int) = ptrtest2;
    expect(110, p2(55));
    float (*p3)(float) = ptrtest3;
    expectf(4, p3(2));
    int (*p4)(void) = &ptrtest1;
    expect(55, (**p4)());
    expect(10, ptrtest4(ptrtest2, 5));
}
