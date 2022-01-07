
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_signedcast() {
    unsigned char c = -1;
    int i = (signed char) c;

    expect(i, -1);
}
