__attribute__((used)) static void FUNC0() {
    int a[2][3];
    a[0][1] = 1;
    a[1][1] = 2;
    int *p = a;
    FUNC0(1, p[1]);
    FUNC0(2, p[4]);
}