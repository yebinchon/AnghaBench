
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ MethodID; int NumInStreams; int NumOutStreams; } ;
struct TYPE_8__ {int NumCoders; int NumPackStreams; scalar_t__* PackStreams; int NumBindPairs; TYPE_1__* BindPairs; TYPE_3__* Coders; } ;
struct TYPE_7__ {int InIndex; scalar_t__ OutIndex; } ;
typedef int SRes ;
typedef TYPE_2__ CSzFolder ;
typedef TYPE_3__ CSzCoderInfo ;


 int IS_BCJ2 (TYPE_3__*) ;
 int IS_SUPPORTED_CODER (TYPE_3__*) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;



__attribute__((used)) static SRes CheckSupportedFolder(const CSzFolder *f)
{
  if (f->NumCoders < 1 || f->NumCoders > 4)
    return SZ_ERROR_UNSUPPORTED;
  if (!IS_SUPPORTED_CODER(&f->Coders[0]))
    return SZ_ERROR_UNSUPPORTED;
  if (f->NumCoders == 1)
  {
    if (f->NumPackStreams != 1 || f->PackStreams[0] != 0 || f->NumBindPairs != 0)
      return SZ_ERROR_UNSUPPORTED;
    return SZ_OK;
  }
  if (f->NumCoders == 2)
  {
    CSzCoderInfo *c = &f->Coders[1];
    if (c->MethodID > (uint32_t)0xFFFFFFFF ||
        c->NumInStreams != 1 ||
        c->NumOutStreams != 1 ||
        f->NumPackStreams != 1 ||
        f->PackStreams[0] != 0 ||
        f->NumBindPairs != 1 ||
        f->BindPairs[0].InIndex != 1 ||
        f->BindPairs[0].OutIndex != 0)
      return SZ_ERROR_UNSUPPORTED;
    switch ((uint32_t)c->MethodID)
    {
      case 128:
      case 129:
        break;
      default:
        return SZ_ERROR_UNSUPPORTED;
    }
    return SZ_OK;
  }
  if (f->NumCoders == 4)
  {
    if (!IS_SUPPORTED_CODER(&f->Coders[1]) ||
        !IS_SUPPORTED_CODER(&f->Coders[2]) ||
        !IS_BCJ2(&f->Coders[3]))
      return SZ_ERROR_UNSUPPORTED;
    if (f->NumPackStreams != 4 ||
        f->PackStreams[0] != 2 ||
        f->PackStreams[1] != 6 ||
        f->PackStreams[2] != 1 ||
        f->PackStreams[3] != 0 ||
        f->NumBindPairs != 3 ||
        f->BindPairs[0].InIndex != 5 || f->BindPairs[0].OutIndex != 0 ||
        f->BindPairs[1].InIndex != 4 || f->BindPairs[1].OutIndex != 1 ||
        f->BindPairs[2].InIndex != 3 || f->BindPairs[2].OutIndex != 2)
      return SZ_ERROR_UNSUPPORTED;
    return SZ_OK;
  }
  return SZ_ERROR_UNSUPPORTED;
}
