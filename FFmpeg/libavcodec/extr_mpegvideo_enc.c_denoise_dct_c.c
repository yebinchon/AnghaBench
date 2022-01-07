
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int mb_intra; int** dct_error_sum; scalar_t__** dct_offset; int * dct_count; } ;
typedef TYPE_1__ MpegEncContext ;



__attribute__((used)) static void denoise_dct_c(MpegEncContext *s, int16_t *block){
    const int intra= s->mb_intra;
    int i;

    s->dct_count[intra]++;

    for(i=0; i<64; i++){
        int level= block[i];

        if(level){
            if(level>0){
                s->dct_error_sum[intra][i] += level;
                level -= s->dct_offset[intra][i];
                if(level<0) level=0;
            }else{
                s->dct_error_sum[intra][i] -= level;
                level += s->dct_offset[intra][i];
                if(level>0) level=0;
            }
            block[i]= level;
        }
    }
}
