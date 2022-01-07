
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Node ;
typedef int Buffer ;


 int buf_printf (int *,char*,...) ;
 int node2s (int *) ;
 int * vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void a2s_declinit(Buffer *b, Vector *initlist) {
    for (int i = 0; i < vec_len(initlist); i++) {
        if (i > 0)
            buf_printf(b, " ");
        Node *init = vec_get(initlist, i);
        buf_printf(b, "%s", node2s(init));
    }
}
