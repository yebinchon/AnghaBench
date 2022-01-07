
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int buffers ;
 int vec_push (int ,int *) ;

void token_buffer_stash(Vector *buf) {
    vec_push(buffers, buf);
}
