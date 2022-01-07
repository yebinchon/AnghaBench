
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int out ;
struct TYPE_7__ {int* v; } ;
typedef TYPE_1__ AVInteger ;


 int AV_INTEGER_SIZE ;
 int av_log2_i (TYPE_1__) ;
 int memset (TYPE_1__*,int ,int) ;

AVInteger av_mul_i(AVInteger a, AVInteger b){
    AVInteger out;
    int i, j;
    int na= (av_log2_i(a)+16) >> 4;
    int nb= (av_log2_i(b)+16) >> 4;

    memset(&out, 0, sizeof(out));

    for(i=0; i<na; i++){
        unsigned int carry=0;

        if(a.v[i])
            for(j=i; j<AV_INTEGER_SIZE && j-i<=nb; j++){
                carry= (carry>>16) + out.v[j] + a.v[i]*(unsigned)b.v[j-i];
                out.v[j]= carry;
            }
    }

    return out;
}
