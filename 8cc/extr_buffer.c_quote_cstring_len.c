
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 char* buf_body (int *) ;
 int * make_buffer () ;
 int print (int *,char) ;

char *quote_cstring_len(char *p, int len) {
    Buffer *b = make_buffer();
    for (int i = 0; i < len; i++)
        print(b, p[i]);
    return buf_body(b);
}
