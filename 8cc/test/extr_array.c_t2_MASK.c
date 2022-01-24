__attribute__((used)) static void FUNC0() {
    int a[2][3];
    int *p = a + 1;
    *p = 1;
    int *q = a;
    *p = 32;
    FUNC0(32, *(q + 3));
}