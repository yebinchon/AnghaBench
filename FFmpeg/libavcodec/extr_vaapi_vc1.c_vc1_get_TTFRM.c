
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ttfrm; } ;
typedef TYPE_1__ VC1Context ;







__attribute__((used)) static inline int vc1_get_TTFRM(const VC1Context *v)
{
    switch (v->ttfrm) {
    case 128: return 0;
    case 129: return 1;
    case 130: return 2;
    case 131: return 3;
    }
    return 0;
}
