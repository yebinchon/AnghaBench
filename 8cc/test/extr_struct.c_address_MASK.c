__attribute__((used)) static void FUNC0() {
    struct tag { int a; struct { int b; } y; } x = { 6, 7 };
    int *p1 = &x.a;
    int *p2 = &x.y.b;
    FUNC0(6, *p1);
    FUNC0(7, *p2);
    FUNC0(6, *&x.a);
    FUNC0(7, *&x.y.b);

    struct tag *xp = &x;
    int *p3 = &xp->a;
    int *p4 = &xp->y.b;
    FUNC0(6, *p3);
    FUNC0(7, *p4);
    FUNC0(6, *&xp->a);
    FUNC0(7, *&xp->y.b);
}