
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int cache; } ;
typedef TYPE_1__ GetBitContext ;


 unsigned int UINT64_C (int) ;

__attribute__((used)) static inline unsigned show_val(const GetBitContext *s, unsigned n)
{



    return s->cache >> (64 - n);

}
