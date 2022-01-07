
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 char* buf_body (int *) ;
 int buf_printf (int *,char*,...) ;
 int buf_write (int *,char) ;
 int functions ;
 int * make_buffer () ;
 int vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static char *get_caller_list() {
    Buffer *b = make_buffer();
    for (int i = 0; i < vec_len(functions); i++) {
        if (i > 0)
            buf_printf(b, " -> ");
        buf_printf(b, "%s", vec_get(functions, i));
    }
    buf_write(b, '\0');
    return buf_body(b);
}
