
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 int * ZSTD_createDCtx () ;

ZSTD_DCtx* ZSTDv04_createDCtx(void) { return ZSTD_createDCtx(); }
