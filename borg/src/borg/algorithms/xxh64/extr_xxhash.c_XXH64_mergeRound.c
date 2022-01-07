
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;


 int PRIME64_1 ;
 int PRIME64_4 ;
 int XXH64_round (int ,int) ;

__attribute__((used)) static U64 XXH64_mergeRound(U64 acc, U64 val)
{
    val = XXH64_round(0, val);
    acc ^= val;
    acc = acc * PRIME64_1 + PRIME64_4;
    return acc;
}
