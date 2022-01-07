
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_literals() {
    expect(4, sizeof 1);
    expect(4, sizeof('a'));
    expect(4, sizeof(1.0f));
    expect(8, sizeof 1L);
    expect(8, sizeof 1.0);
    expect(8, sizeof(1.0));
}
