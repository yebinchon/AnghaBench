
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 unsigned int get_rice_un (int *,int) ;

__attribute__((used)) static int get_rice(GetBitContext *gb, int k)
{
    unsigned int v = get_rice_un(gb, k);
    return (v >> 1) ^ -(v & 1);
}
