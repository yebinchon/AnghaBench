
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {unsigned int address; int TA; int TAC; unsigned int TB; int TBC; int TBT; int TAT; } ;
struct TYPE_5__ {TYPE_1__ ST; int lfo_inc; int * lfo_freq; } ;
struct TYPE_6__ {int addr_A1; int dacout; unsigned int dacen; TYPE_2__ OPN; } ;


 int FM_KEYOFF (int,int ) ;
 int FM_KEYON (int,int ) ;
 int OPNWriteReg (int,unsigned int) ;
 int SLOT1 ;
 int SLOT2 ;
 int SLOT3 ;
 int SLOT4 ;
 int set_timers (unsigned int) ;
 TYPE_3__ ym2612 ;

int YM2612Write_(unsigned int a, unsigned int v)
{
 int addr, ret=1;

 v &= 0xff;

 switch( a&3){
 case 0:
  ym2612.OPN.ST.address = v;
  ym2612.addr_A1 = 0;
  ret=0;
  break;

 case 1:
  if (ym2612.addr_A1 != 0) {
   ret=0;
   break;
  }

  addr = ym2612.OPN.ST.address;

  switch( addr & 0xf0 )
  {
  case 0x20:
   switch( addr )
   {
   case 0x22:
    if (v&0x08)
    {
     ym2612.OPN.lfo_inc = ym2612.OPN.lfo_freq[v&7];
    }
    else
    {
     ym2612.OPN.lfo_inc = 0;
    }
    break;
   case 0x27:
    set_timers( v );
    ret=0;
    break;
   case 0x28:
    {
     UINT8 c;

     c = v & 0x03;
     if( c == 3 ) { ret=0; break; }
     if( v&0x04 ) c+=3;
     if(v&0x10) FM_KEYON(c,SLOT1); else FM_KEYOFF(c,SLOT1);
     if(v&0x20) FM_KEYON(c,SLOT2); else FM_KEYOFF(c,SLOT2);
     if(v&0x40) FM_KEYON(c,SLOT3); else FM_KEYOFF(c,SLOT3);
     if(v&0x80) FM_KEYON(c,SLOT4); else FM_KEYOFF(c,SLOT4);
     break;
    }
   case 0x2a:
    ym2612.dacout = ((int)v - 0x80) << 6;
    ret=0;
    break;
   case 0x2b:

    ym2612.dacen = v & 0x80;
    ret=0;
    break;
   default:
    break;
   }
   break;
  default:

   ret = OPNWriteReg(addr,v);
  }
  break;

 case 2:
  ym2612.OPN.ST.address = v;
  ym2612.addr_A1 = 1;
  ret=0;
  break;

 case 3:
  if (ym2612.addr_A1 != 1) {
   ret=0;
   break;
  }

  addr = ym2612.OPN.ST.address | 0x100;

  ret = OPNWriteReg(addr, v);
  break;
 }

 return ret;
}
