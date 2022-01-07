
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int File ;


 int files ;
 int make_vector1 (int *) ;
 int stashed ;
 int vec_push (int ,int ) ;

void stream_stash(File *f) {
    vec_push(stashed, files);
    files = make_vector1(f);
}
