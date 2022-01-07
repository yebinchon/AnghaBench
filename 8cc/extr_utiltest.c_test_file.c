
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_int (char,scalar_t__) ;
 int assert_true (int) ;
 int make_file_string (char*) ;
 scalar_t__ readc () ;
 int stream_push (int ) ;
 int unreadc (char) ;

__attribute__((used)) static void test_file() {
    stream_push(make_file_string("abc"));
    assert_int('a', readc());
    assert_int('b', readc());
    unreadc('b');
    unreadc('a');
    assert_int('a', readc());
    assert_int('b', readc());
    assert_int('c', readc());
    assert_int('\n', readc());
    unreadc('\n');
    assert_int('\n', readc());
    assert_true(readc() < 0);
}
