__attribute__((used)) static void FUNC0() {
    int v[3] = { [1] = 5 };
    FUNC0(0, v[0]);
    FUNC0(5, v[1]);
    FUNC0(0, v[2]);

    struct { int a, b; } x[2] = { [1] = { 1, 2 } };
    FUNC0(0, x[0].a);
    FUNC0(0, x[0].b);
    FUNC0(1, x[1].a);
    FUNC0(2, x[1].b);

    struct { int a, b; } x2[3] = { [1] = 1, 2, 3, 4 };
    FUNC0(0, x2[0].a);
    FUNC0(0, x2[0].b);
    FUNC0(1, x2[1].a);
    FUNC0(2, x2[1].b);
    FUNC0(3, x2[2].a);
    FUNC0(4, x2[2].b);

    int x3[] = { [2] = 3, [0] = 1, 2 };
    FUNC0(1, x3[0]);
    FUNC0(2, x3[1]);
    FUNC0(3, x3[2]);
}