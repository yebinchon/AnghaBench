
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int handle; int hash; } ;
typedef TYPE_1__ SHandleViaTcp ;


 int taosHashUInt64 (int ) ;

void taosInitHandleViaTcp(SHandleViaTcp *handleViaTcp, uint64_t handle) {
  handleViaTcp->handle = handle;
  handleViaTcp->hash = taosHashUInt64(handleViaTcp->handle);
}
