
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int File ;


 int files ;
 int vec_push (int ,int *) ;

void stream_push(File *f) {
    vec_push(files, f);
}
