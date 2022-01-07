
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ result; } ;
struct TYPE_5__ {scalar_t__ res; } ;
struct TYPE_7__ {scalar_t__ result; int finished; TYPE_2__ matchFinderBase; TYPE_1__ rc; } ;
typedef scalar_t__ SRes ;
typedef TYPE_3__ CLzmaEnc ;


 scalar_t__ SZ_ERROR_READ ;
 scalar_t__ SZ_ERROR_WRITE ;
 scalar_t__ SZ_OK ;

__attribute__((used)) static SRes CheckErrors(CLzmaEnc *p)
{
  if (p->result != SZ_OK)
    return p->result;
  if (p->rc.res != SZ_OK)
    p->result = SZ_ERROR_WRITE;
  if (p->matchFinderBase.result != SZ_OK)
    p->result = SZ_ERROR_READ;
  if (p->result != SZ_OK)
    p->finished = 1;
  return p->result;
}
