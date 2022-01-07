
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int QP; } ;
typedef TYPE_1__ PPContext ;


 scalar_t__ isVertDC_C (int const*,int,TYPE_1__ const*) ;
 int isVertMinMaxOk_C (int const*,int,int ) ;

__attribute__((used)) static inline int vertClassify_C(const uint8_t src[], int stride, const PPContext *c)
{
    if( isVertDC_C(src, stride, c) ){
        return isVertMinMaxOk_C(src, stride, c->QP);
    }else{
        return 2;
    }
}
