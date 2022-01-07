
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stage; int zc; } ;
typedef TYPE_1__ ZBUFF_DCtx ;


 int ZBUFFds_init ;
 int ZSTD_createDCtx () ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static ZBUFF_DCtx* ZBUFF_createDCtx(void)
{
    ZBUFF_DCtx* zbc = (ZBUFF_DCtx*)malloc(sizeof(ZBUFF_DCtx));
    if (zbc==((void*)0)) return ((void*)0);
    memset(zbc, 0, sizeof(*zbc));
    zbc->zc = ZSTD_createDCtx();
    zbc->stage = ZBUFFds_init;
    return zbc;
}
