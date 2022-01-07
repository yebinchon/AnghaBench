
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t buf_len (int *) ;
 int * gen_foreign_headers_buf ;
 int gen_include (int ) ;

void gen_foreign_headers(void) {
    if (gen_foreign_headers_buf) {
        for (size_t i = 0; i < buf_len(gen_foreign_headers_buf); i++) {
            gen_include(gen_foreign_headers_buf[i]);
        }
    }
}
