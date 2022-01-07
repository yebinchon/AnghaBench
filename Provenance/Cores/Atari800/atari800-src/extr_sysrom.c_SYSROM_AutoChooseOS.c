
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_TV_NTSC ;
 int Atari800_builtin_basic ;
 int Atari800_builtin_game ;
 int AutoChooseROM (int const*) ;
 int* autochoose_order_1200xl ;
 int* autochoose_order_5200 ;
 int* autochoose_order_600xl ;
 int* autochoose_order_800_ntsc ;
 int* autochoose_order_800_pal ;
 int* autochoose_order_800xl ;
 int* autochoose_order_xe ;
 int* autochoose_order_xegs ;

int SYSROM_AutoChooseOS(int machine_type, int ram_size, int tv_system)
{
 int const *order;

 switch (machine_type) {
 case 129:
  if (tv_system == Atari800_TV_NTSC)
   order = autochoose_order_800_ntsc;
  else
   order = autochoose_order_800_pal;
  break;
 case 128:
  if (Atari800_builtin_game)
   order = autochoose_order_xegs;
  else if (!Atari800_builtin_basic)
   order = autochoose_order_1200xl;
  else {
   switch (ram_size) {
   case 16:
    order = autochoose_order_600xl;
    break;
   case 64:
    order = autochoose_order_800xl;
    break;
   default:
    order = autochoose_order_xe;
    break;
   }
  }
  break;
 default:
  order = autochoose_order_5200;
  break;
 }

 return AutoChooseROM(order);
}
