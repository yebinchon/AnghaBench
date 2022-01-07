
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int expect_string (char*,char*) ;

__attribute__((used)) static void test_string() {
    expect_string("abc", "abc");
    expect_string("abc", u8"abc");
    expect('a', "abc"[0]);
    expect(0, "abc"[3]);
    expect_string("abcd", "ab" "cd");
    expect_string("abcdef", "ab" "cd" "ef");

    char expected[] = { 65, 97, 7, 8, 12, 10, 13, 9, 11, 27, 7, 15, -99, -1, 18, 0 };
    expect_string(expected, "Aa\a\b\f\n\r\t\v\e\7\17\235\xff\x012");
    expect('c', L'c');
    expect(0x3042, L'\u3042');
    expect(0x3042, u'\u3042');
    expect(0x3042, U'\u3042');


    int L = 1, u = 2, U = 3, u8 = 4;
    expect(10, L + u + U + u8);
    int Lx = 1, ux = 2, Ux = 3, u8x = 4;
    expect(10, Lx + ux + Ux + u8x);
}
