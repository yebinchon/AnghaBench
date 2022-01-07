
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTDMT_parameter ;
struct TYPE_3__ {int params; } ;
typedef TYPE_1__ ZSTDMT_CCtx ;


 int DEBUGLOG (int,char*) ;
 size_t ZSTDMT_CCtxParam_setMTCtxParameter (int *,int ,int) ;

size_t ZSTDMT_setMTCtxParameter(ZSTDMT_CCtx* mtctx, ZSTDMT_parameter parameter, int value)
{
    DEBUGLOG(4, "ZSTDMT_setMTCtxParameter");
    return ZSTDMT_CCtxParam_setMTCtxParameter(&mtctx->params, parameter, value);
}
