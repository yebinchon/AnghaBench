
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void arrow() {
    struct cell { int val; struct cell *next; };
    struct cell v1 = { 5, ((void*)0) };
    struct cell v2 = { 6, &v1 };
    struct cell v3 = { 7, &v2 };
    struct cell *p = &v3;
    expect(7, v3.val);
    expect(7, p->val);
    expect(6, p->next->val);
    expect(5, p->next->next->val);

    p->val = 10;
    p->next->val = 11;
    p->next->next->val = 12;
    expect(10, p->val);
    expect(11, p->next->val);
    expect(12, p->next->next->val);
}
