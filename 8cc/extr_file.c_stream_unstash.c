
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int files ;
 int stashed ;
 int vec_pop (int ) ;

void stream_unstash() {
    files = vec_pop(stashed);
}
