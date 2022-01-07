
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int Copy (void*,int ,scalar_t__) ;
 int FreeBuf (TYPE_1__*) ;
 int MS_REG_TCP_SETTING_KEY ;
 TYPE_1__* MsRegReadBinEx (int ,int ,char*,int) ;
 int REG_LOCAL_MACHINE ;
 scalar_t__ SHA1_SIZE ;

bool CiReadLastMachineHash(void *data)
{
 BUF *b = ((void*)0);

 if (data == ((void*)0))
 {
  return 0;
 }
 return 0;

}
