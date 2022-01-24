__attribute__((used)) static void FUNC0() {
    struct { struct { int a, b; } x[3]; } y[] = {
        [1].x[0].b = 5, 6, 7, 8, 9,
        [0].x[2].b = 10, 11
    };
    FUNC0(0, y[0].x[0].a);
    FUNC0(0, y[0].x[0].b);
    FUNC0(0, y[0].x[1].a);
    FUNC0(0, y[0].x[1].b);
    FUNC0(0, y[0].x[2].a);
    FUNC0(10, y[0].x[2].b);
    FUNC0(11, y[1].x[0].a);
    FUNC0(5, y[1].x[0].b);
    FUNC0(6, y[1].x[1].a);
    FUNC0(7, y[1].x[1].b);
    FUNC0(8, y[1].x[2].a);
    FUNC0(9, y[1].x[2].b);

    int y2[][3] = { [0][0] = 1, [1][0] = 3 };
    FUNC0(1, y2[0][0]);
    FUNC0(3, y2[1][0]);

    struct { int a, b[3]; } y3 = { .a = 1, .b[0] = 10, .b[1] = 11 };
    FUNC0(1, y3.a);
    FUNC0(10, y3.b[0]);
    FUNC0(11, y3.b[1]);
    FUNC0(0, y3.b[2]);
}