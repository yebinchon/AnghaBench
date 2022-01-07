
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int table; } ;
struct TYPE_5__ {int* recode; int bits; TYPE_1__ vlc; } ;
typedef TYPE_2__ TM2Codes ;
typedef int GetBitContext ;


 int get_vlc2 (int *,int ,int ,int) ;

__attribute__((used)) static inline int tm2_get_token(GetBitContext *gb, TM2Codes *code)
{
    int val;
    val = get_vlc2(gb, code->vlc.table, code->bits, 1);
    if(val<0)
        return -1;
    return code->recode[val];
}
