
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
struct TYPE_3__ {int* v; } ;
typedef TYPE_1__ AVInteger ;


 int AV_INTEGER_SIZE ;

int64_t av_i2int(AVInteger a){
    int i;
    int64_t out=(int8_t)a.v[AV_INTEGER_SIZE-1];

    for(i= AV_INTEGER_SIZE-2; i>=0; i--){
        out = (out<<16) + a.v[i];
    }
    return out;
}
