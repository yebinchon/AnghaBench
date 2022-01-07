
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int* v; } ;
typedef TYPE_1__ AVInteger ;


 int AV_INTEGER_SIZE ;

AVInteger av_int2i(int64_t a){
    AVInteger out;
    int i;

    for(i=0; i<AV_INTEGER_SIZE; i++){
        out.v[i]= a;
        a>>=16;
    }
    return out;
}
