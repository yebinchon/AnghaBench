
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int expectd (double,double) ;
 int expectf (double,float) ;
 int print (char*) ;
 int test_signedcast () ;
 int test_unsignedcast () ;

void testmain() {
    print("cast");
    expectf(1, (int)1);
    expectf(1.0, (float)1);
    expectd(2.0, (double)2);

    int a[3];
    *(int *)(a + 2) = 5;
    expect(5, a[2]);

    test_signedcast();
    test_unsignedcast();
}
