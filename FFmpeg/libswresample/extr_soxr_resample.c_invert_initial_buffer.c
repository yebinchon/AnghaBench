
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ResampleContext {int dummy; } ;
typedef int AudioData ;



__attribute__((used)) static int invert_initial_buffer(struct ResampleContext *c, AudioData *dst, const AudioData *src,
                                 int in_count, int *out_idx, int *out_sz){
    return 0;
}
