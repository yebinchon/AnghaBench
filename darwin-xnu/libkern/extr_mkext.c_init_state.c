
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encode_state {char* text_buf; void** parent; void** rchild; } ;


 int F ;
 int N ;
 void* NIL ;
 int bzero (struct encode_state*,int) ;

__attribute__((used)) static void init_state(struct encode_state *sp)
{
    int i;

    bzero(sp, sizeof(*sp));

    for (i = 0; i < N - F; i++)
        sp->text_buf[i] = ' ';
    for (i = N + 1; i <= N + 256; i++)
        sp->rchild[i] = NIL;
    for (i = 0; i < N; i++)
        sp->parent[i] = NIL;
}
