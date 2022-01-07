
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; int preferred_transfer_characteristics; } ;
typedef TYPE_1__ HEVCSEIAlternativeTransfer ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;

__attribute__((used)) static int decode_nal_sei_alternative_transfer(HEVCSEIAlternativeTransfer *s, GetBitContext *gb)
{
    s->present = 1;
    s->preferred_transfer_characteristics = get_bits(gb, 8);
    return 0;
}
