
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* v; } ;
typedef TYPE_1__ AVInteger ;


 int AV_INTEGER_SIZE ;

AVInteger av_shr_i(AVInteger a, int s){
    AVInteger out;
    int i;

    for(i=0; i<AV_INTEGER_SIZE; i++){
        unsigned int index= i + (s>>4);
        unsigned int v=0;
        if(index+1<AV_INTEGER_SIZE) v = a.v[index+1]<<16;
        if(index <AV_INTEGER_SIZE) v+= a.v[index ];
        out.v[i]= v >> (s&15);
    }
    return out;
}
