
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 char* buf_body (int *) ;
 int * make_buffer () ;
 int print (int *,int ) ;

char *quote_cstring(char *p) {
    Buffer *b = make_buffer();
    while (*p)
        print(b, *p++);
    return buf_body(b);
}
