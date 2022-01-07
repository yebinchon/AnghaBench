
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (short,short) ;

__attribute__((used)) static void verify_short(short *expected, short *got, int len) {
    for (int i = 0; i < len; i++)
        expect(expected[i], got[i]);
}
