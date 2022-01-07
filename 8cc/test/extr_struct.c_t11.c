
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag11 {int a; } ;


 int expect (int,int) ;
 struct tag11 v11 ;

__attribute__((used)) static void t11() {
    struct tag11 *p = &v11;
    v11.a = 78;
    expect(78, (*p).a);
    expect(78, v11.a);
    expect(78, p->a);
    p->a = 79;
    expect(79, (*p).a);
    expect(79, v11.a);
    expect(79, p->a);
}
