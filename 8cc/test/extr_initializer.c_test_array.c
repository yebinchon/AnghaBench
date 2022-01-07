
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int verify (int*,int**,int) ;
 int verify_short (short*,short***,int) ;

__attribute__((used)) static void test_array() {
    int x[] = { 1, 3, 5 };
    expect(1, x[0]);
    expect(3, x[1]);
    expect(5, x[2]);

    int ye[] = { 1, 3, 5, 2, 4, 6, 3, 5, 7, 0, 0, 0 };
    int y1[4][3] = { { 1, 3, 5 }, { 2, 4, 6 }, { 3, 5, 7 }, };
    verify(ye, y1, 12);
    int y2[4][3] = { 1, 3, 5, 2, 4, 6, 3, 5, 7 };
    verify(ye, y2, 12);

    int ze[] = { 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0 };
    int z[4][3] = { { 1 }, { 2 }, { 3 }, { 4 } };
    verify(ze, z, 12);

    short qe[24] = { 1, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 4, 5, 6 };
    short q[4][3][2] = { { 1 }, { 2, 3 }, { 4, 5, 6 } };
    verify_short(qe, q, 24);

    int a[] = {{{ 3 }}};
    expect(3, a[0]);
}
