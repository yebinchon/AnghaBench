
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GetBitContext ;


 int AV_NOPTS_VALUE ;
 int get_bits64 (int *,int) ;
 int get_bits_left (int *) ;

__attribute__((used)) static uint64_t get_ts64(GetBitContext *gb, int bits)
{
    if (get_bits_left(gb) < bits)
        return AV_NOPTS_VALUE;
    return get_bits64(gb, bits);
}
