
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double num; scalar_t__ den; } ;
typedef TYPE_1__ AVRational ;



__attribute__((used)) static inline double av_q2d(AVRational a){
    return a.num / (double) a.den;
}
