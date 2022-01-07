
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int assert_string (char*,int ) ;
 int buf_body (int *) ;
 int buf_printf (int *,char*,char*) ;
 int buf_write (int *,char) ;
 int * make_buffer () ;

__attribute__((used)) static void test_buf() {
    Buffer *b = make_buffer();
    buf_write(b, 'a');
    buf_write(b, 'b');
    buf_write(b, '\0');
    assert_string("ab", buf_body(b));

    Buffer *b2 = make_buffer();
    buf_write(b2, '.');
    buf_printf(b2, "%s", "0123456789");
    assert_string(".0123456789", buf_body(b2));
}
