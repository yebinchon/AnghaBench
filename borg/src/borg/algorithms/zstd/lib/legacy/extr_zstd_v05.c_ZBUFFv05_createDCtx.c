
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stage; int zc; } ;
typedef TYPE_1__ ZBUFFv05_DCtx ;


 int ZBUFFv05ds_init ;
 int ZSTDv05_createDCtx () ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

ZBUFFv05_DCtx* ZBUFFv05_createDCtx(void)
{
    ZBUFFv05_DCtx* zbc = (ZBUFFv05_DCtx*)malloc(sizeof(ZBUFFv05_DCtx));
    if (zbc==((void*)0)) return ((void*)0);
    memset(zbc, 0, sizeof(*zbc));
    zbc->zc = ZSTDv05_createDCtx();
    zbc->stage = ZBUFFv05ds_init;
    return zbc;
}
