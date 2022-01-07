
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Buffer ;


 char* buf_body (int *) ;
 int do_node2s (int *,int *) ;
 int * make_buffer () ;

char *node2s(Node *node) {
    Buffer *b = make_buffer();
    do_node2s(b, node);
    return buf_body(b);
}
