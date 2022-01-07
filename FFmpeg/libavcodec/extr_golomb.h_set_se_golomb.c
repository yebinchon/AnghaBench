
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int set_ue_golomb (int *,int) ;

__attribute__((used)) static inline void set_se_golomb(PutBitContext *pb, int i)
{
    i = 2 * i - 1;
    if (i < 0)
        i ^= -1;
    set_ue_golomb(pb, i);
}
