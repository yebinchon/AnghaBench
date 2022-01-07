
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* v; } ;
typedef TYPE_1__ AVInteger ;


 int AV_INTEGER_SIZE ;

AVInteger av_sub_i(AVInteger a, AVInteger b){
    int i, carry=0;

    for(i=0; i<AV_INTEGER_SIZE; i++){
        carry= (carry>>16) + a.v[i] - b.v[i];
        a.v[i]= carry;
    }
    return a;
}
