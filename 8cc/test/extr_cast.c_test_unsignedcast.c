
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_unsignedcast() {
    signed char c = -1;
    int i = (unsigned char) c;

    expect(1, i > 0);
}
