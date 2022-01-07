
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int address; } ;
struct TYPE_5__ {TYPE_1__ ST; } ;
struct TYPE_6__ {int dacout; unsigned int dacen; TYPE_2__ OPN; } ;


 int OPNWriteMode (int,unsigned int) ;
 int OPNWriteReg (int,unsigned int) ;
 TYPE_3__ ym2612 ;

void YM2612Write(unsigned int a, unsigned int v)
{
  v &= 0xff;

  switch( a )
  {
    case 0:
      ym2612.OPN.ST.address = v;
      break;

    case 2:
      ym2612.OPN.ST.address = v | 0x100;
      break;

    default:
    {
      int addr = ym2612.OPN.ST.address;
      switch( addr & 0x1f0 )
      {
        case 0x20:
          switch( addr )
          {
            case 0x2a:
              ym2612.dacout = ((int)v - 0x80) << 6;
              break;
            case 0x2b:

              ym2612.dacen = v & 0x80;
              break;
            default:

              OPNWriteMode(addr,v);
          }
          break;
        default:

          OPNWriteReg(addr,v);
      }
      break;
    }
  }
}
