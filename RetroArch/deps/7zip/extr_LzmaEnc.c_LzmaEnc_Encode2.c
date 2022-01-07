
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rc; int nowPos64; scalar_t__ finished; } ;
struct TYPE_8__ {scalar_t__ (* Progress ) (TYPE_1__*,int ,int ) ;} ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ ICompressProgress ;
typedef TYPE_2__ CLzmaEnc ;


 scalar_t__ LzmaEnc_CodeOneBlock (TYPE_2__*,int,int ,int ) ;
 int LzmaEnc_Finish (TYPE_2__*) ;
 int RangeEnc_GetProcessed (int *) ;
 scalar_t__ SZ_ERROR_PROGRESS ;
 scalar_t__ SZ_OK ;
 scalar_t__ stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static SRes LzmaEnc_Encode2(CLzmaEnc *p, ICompressProgress *progress)
{
  SRes res = SZ_OK;


  unsigned char allocaDummy[0x300];
  allocaDummy[0] = 0;
  allocaDummy[1] = allocaDummy[0];


  for (;;)
  {
    res = LzmaEnc_CodeOneBlock(p, 0, 0, 0);
    if (res != SZ_OK || p->finished)
      break;
    if (progress)
    {
      res = progress->Progress(progress, p->nowPos64, RangeEnc_GetProcessed(&p->rc));
      if (res != SZ_OK)
      {
        res = SZ_ERROR_PROGRESS;
        break;
      }
    }
  }

  LzmaEnc_Finish(p);

  return res;
}
