
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int range; int low; } ;
typedef TYPE_1__ CABACContext ;


 int CABAC_MASK ;
 int refill (TYPE_1__*) ;

__attribute__((used)) static inline void renorm_cabac_decoder_once(CABACContext *c){
    int shift= (uint32_t)(c->range - 0x100)>>31;
    c->range<<= shift;
    c->low <<= shift;
    if(!(c->low & CABAC_MASK))
        refill(c);
}
