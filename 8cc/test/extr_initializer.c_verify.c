
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void verify(int *expected, int *got, int len) {
    for (int i = 0; i < len; i++)
        expect(expected[i], got[i]);
}
