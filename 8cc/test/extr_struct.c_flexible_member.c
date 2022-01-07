__attribute__((used)) static void flexible_member() {
    struct { int a, b[]; } x;
    expect(4, sizeof(x));
    struct { int a, b[0]; } y;
    expect(4, sizeof(y));
    struct { int a[0]; } z;
    expect(0, sizeof(z));
}
