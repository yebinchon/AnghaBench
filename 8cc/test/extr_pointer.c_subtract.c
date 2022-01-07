
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void subtract() {
    char *p = "abcdefg";
    char *q = p + 5;
    expect(8, sizeof(q - p));
    expect(5, q - p);
}
