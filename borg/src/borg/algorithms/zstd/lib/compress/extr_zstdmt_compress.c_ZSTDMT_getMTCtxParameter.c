
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTDMT_parameter ;
struct TYPE_4__ {int overlapLog; int rsyncable; scalar_t__ jobSize; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;


 size_t ERROR (int ) ;
 scalar_t__ INT_MAX ;



 int assert (int) ;
 int parameter_unsupported ;

size_t ZSTDMT_getMTCtxParameter(ZSTDMT_CCtx* mtctx, ZSTDMT_parameter parameter, int* value)
{
    switch (parameter) {
    case 130:
        assert(mtctx->params.jobSize <= INT_MAX);
        *value = (int)(mtctx->params.jobSize);
        break;
    case 129:
        *value = mtctx->params.overlapLog;
        break;
    case 128:
        *value = mtctx->params.rsyncable;
        break;
    default:
        return ERROR(parameter_unsupported);
    }
    return 0;
}
