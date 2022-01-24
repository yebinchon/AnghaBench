__attribute__((used)) static void FUNC0() {
    struct tag6 { int a; } x;
    struct tag6 *p = &x;
    (*p).a = 69;
    FUNC0(69, x.a);
}