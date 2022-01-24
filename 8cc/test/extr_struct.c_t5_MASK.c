__attribute__((used)) static void FUNC0() {
    struct tag5 { int a; } x;
    struct tag5 *p = &x;
    x.a = 68;
    FUNC0(68, (*p).a);
}