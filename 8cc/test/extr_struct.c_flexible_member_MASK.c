__attribute__((used)) static void FUNC0() {
    struct { int a, b[]; } x;
    FUNC0(4, sizeof(x));
    struct { int a, b[0]; } y;
    FUNC0(4, sizeof(y));
    struct { int a[0]; } z;
    FUNC0(0, sizeof(z));

#ifdef __8cc__ // BUG
    struct t { int a, b[]; };
    struct t x2 = { 1, 2, 3 };
    struct t x3 = { 1, 2, 3, 4, 5 };
    expect(2, x3.b[0]);
    expect(3, x3.b[1]);
    expect(4, x3.b[2]);
    expect(5, x3.b[3]);
#endif
}