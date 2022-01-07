
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_3__ {int sectorsize; int fp; int current_sector; } ;
typedef TYPE_1__ ATR_Info ;


 int fsave (int *,int,int ) ;

__attribute__((used)) static int write_atr_sector(ATR_Info *pai, UBYTE *buf)
{
 return fsave(buf, pai->current_sector++ <= 3 ? 128 : pai->sectorsize, pai->fp);
}
