
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_unary (int *,int ,int) ;

__attribute__((used)) static inline int get_unary_0_9(GetBitContext *gb)
{
    return get_unary(gb, 0, 9);
}
