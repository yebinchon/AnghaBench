
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* v; } ;
typedef TYPE_1__ AVInteger ;


 int AV_INTEGER_SIZE ;
 int av_log2_16bit (scalar_t__) ;

int av_log2_i(AVInteger a){
    int i;

    for(i=AV_INTEGER_SIZE-1; i>=0; i--){
        if(a.v[i])
            return av_log2_16bit(a.v[i]) + 16*i;
    }
    return -1;
}
