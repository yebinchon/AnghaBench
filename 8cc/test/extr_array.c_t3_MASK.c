__attribute__((used)) static void FUNC0() {
    int a[4][5];
    int *p = a;
    *(*(a + 1) + 2) = 62;
    FUNC0(62, *(p + 7));
}