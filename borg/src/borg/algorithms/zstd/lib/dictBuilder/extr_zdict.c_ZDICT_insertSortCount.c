
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int count; } ;
typedef TYPE_1__ offsetCount_t ;
typedef int U32 ;


 size_t ZSTD_REP_NUM ;

__attribute__((used)) static void ZDICT_insertSortCount(offsetCount_t table[ZSTD_REP_NUM+1], U32 val, U32 count)
{
    U32 u;
    table[ZSTD_REP_NUM].offset = val;
    table[ZSTD_REP_NUM].count = count;
    for (u=ZSTD_REP_NUM; u>0; u--) {
        offsetCount_t tmp;
        if (table[u-1].count >= table[u].count) break;
        tmp = table[u-1];
        table[u-1] = table[u];
        table[u] = tmp;
    }
}
