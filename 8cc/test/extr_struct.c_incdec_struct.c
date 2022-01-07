
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void incdec_struct() {
    struct incdec {
 int x, y;
    } a[] = { { 1, 2 }, { 3, 4 } }, *p = a;
    expect(1, p->x);
    expect(2, p->y);
    p++;
    expect(3, p->x);
    expect(4, p->y);
    p--;
    expect(1, p->x);
    expect(2, p->y);
    ++p;
    expect(3, p->x);
    expect(4, p->y);
    --p;
    expect(1, p->x);
    expect(2, p->y);
}
