
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zero_buf ;
typedef int UBYTE ;
struct TYPE_4__ {int current_sector; } ;
typedef TYPE_1__ ATR_Info ;


 int FALSE ;
 int TRUE ;
 int memset (int *,int ,int) ;
 int write_atr_sector (TYPE_1__*,int *) ;

__attribute__((used)) static int pad_till_sector(ATR_Info *pai, int till_sector)
{
 UBYTE zero_buf[256];
 memset(zero_buf, 0, sizeof(zero_buf));
 while (pai->current_sector < till_sector)
  if (!write_atr_sector(pai, zero_buf))
   return FALSE;
 return TRUE;
}
