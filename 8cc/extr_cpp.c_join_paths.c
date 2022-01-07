
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Buffer ;


 char* buf_body (int *) ;
 int buf_printf (int *,char*,int ) ;
 int * make_buffer () ;
 int tok2s (int ) ;
 int vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static char *join_paths(Vector *args) {
    Buffer *b = make_buffer();
    for (int i = 0; i < vec_len(args); i++)
        buf_printf(b, "%s", tok2s(vec_get(args, i)));
    return buf_body(b);
}
