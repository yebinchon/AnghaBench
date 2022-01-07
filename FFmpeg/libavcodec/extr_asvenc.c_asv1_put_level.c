
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutBitContext ;


 int ** ff_asv_level_tab ;
 int put_bits (int *,int ,int ) ;
 int put_sbits (int *,int,int) ;

__attribute__((used)) static inline void asv1_put_level(PutBitContext *pb, int level)
{
    unsigned int index = level + 3;

    if (index <= 6) {
        put_bits(pb, ff_asv_level_tab[index][1], ff_asv_level_tab[index][0]);
    } else {
        put_bits(pb, ff_asv_level_tab[3][1], ff_asv_level_tab[3][0]);
        put_sbits(pb, 8, level);
    }
}
