
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cavs_block { ____Placeholder_cavs_block } cavs_block ;
typedef int cavs_vector ;





 size_t MV_STRIDE ;

__attribute__((used)) static inline void set_mvs(cavs_vector *mv, enum cavs_block size) {
    switch(size) {
    case 130:
        mv[MV_STRIDE ] = mv[0];
        mv[MV_STRIDE+1] = mv[0];
    case 129:
        mv[1] = mv[0];
        break;
    case 128:
        mv[MV_STRIDE] = mv[0];
        break;
    }
}
