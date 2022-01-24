__attribute__((used)) static void FUNC0() {
    struct tag8 { int a; int b; } x;
    struct tag8 *p = &x;
    (*p).b = 72;
    FUNC0(72, x.b);
}