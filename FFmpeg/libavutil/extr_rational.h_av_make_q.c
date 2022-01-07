
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; } ;
typedef TYPE_1__ AVRational ;



__attribute__((used)) static inline AVRational av_make_q(int num, int den)
{
    AVRational r = { num, den };
    return r;
}
