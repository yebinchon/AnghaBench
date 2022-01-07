
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range; int low; int outstanding_count; } ;
typedef TYPE_1__ CABACContext ;


 int put_cabac_bit (TYPE_1__*,int) ;

__attribute__((used)) static inline void renorm_cabac_encoder(CABACContext *c){
    while(c->range < 0x100){

        if(c->low<0x100){
            put_cabac_bit(c, 0);
        }else if(c->low<0x200){
            c->outstanding_count++;
            c->low -= 0x100;
        }else{
            put_cabac_bit(c, 1);
            c->low -= 0x200;
        }

        c->range+= c->range;
        c->low += c->low;
    }
}
