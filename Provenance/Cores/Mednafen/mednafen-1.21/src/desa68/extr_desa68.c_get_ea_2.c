
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef void* s8 ;
typedef int s32 ;
typedef int s16 ;
struct TYPE_2__ {void* w; int ea; int flags; int pc; } ;


 int DESA68_SYMBOL_FLAG ;
 int adrL () ;
 int adrW () ;
 TYPE_1__ d ;
 int desa_absL (int) ;
 int desa_ascii (int) ;
 int desa_char (char) ;
 int desa_immL (int) ;
 int desa_label (int) ;
 int desa_signifiant (void*) ;
 int desa_str (char*) ;
 int desa_usignifiant (int) ;
 int immB () ;
 int immL () ;
 int immW () ;
 int indAnXi () ;
 int read_pc () ;
 int relPC () ;
 int update_ea (int) ;

__attribute__((used)) static void get_ea_2(u32 mode, u32 reg, u8 sz)
{
  s32 v;

  if(mode==138) {
    mode += reg;
  }

  switch(mode )
    {
    case 135:
      desa_ascii('D0'+reg);
      break;
    case 137:
      desa_ascii('A0'+reg);
      break;
    case 129:
      desa_ascii('(A0)'+(reg<<8));
      break;
    case 128:
      desa_char('-');
      desa_ascii('(A0)'+(reg<<8));
      break;
    case 136:
      desa_ascii('(A0)'+(reg<<8));
      desa_char('+');
      break;
    case 133:
      read_pc();
      desa_signifiant(d.w);
      desa_ascii('(A0)'+(reg<<8));
      break;
    case 132:
      v = indAnXi();
      d.ea = (s8)(v>>8);
      desa_signifiant((s8)(v>>8));
      desa_ascii('(A0,'+(reg<<8));
      v = (v&0xFFFF00FF)+('.'<<8);
      desa_ascii(v);
      desa_char(')');
      break;
    case 138:
      d.ea = v = adrW();
      desa_usignifiant(v);
      desa_ascii('.W');
      break;
    case 139:
      d.ea = v = adrL();
      update_ea(v);
      desa_absL(v);
      break;
    case 131:
      d.ea = v = relPC();
      update_ea(v);
      if (d.flags & DESA68_SYMBOL_FLAG) {
 desa_label(v);
      } else {
 desa_usignifiant(v);
      }
      desa_str("(PC)");
      break;
    case 130:
      v = indAnXi();
      d.ea = d.pc-2+(s8)(v>>8);
      update_ea(d.ea);
      if (d.flags & DESA68_SYMBOL_FLAG) {
 desa_label(d.ea);
      } else {
 desa_usignifiant(d.ea);
      }
      desa_str("(PC,");
      v = (v&0xFFFF00FF)+('.'<<8);
      desa_ascii(v);
      desa_char(')');
      break;
    case 134:
      switch(sz )
 {
 case 1:
 case 'B':
   v = (s8)immB();
   desa_immL(v);
   break;
 case 2:
 case 'W':
   v = (s16)immW();
   desa_immL(v);
   break;
 case 4:
 case 'L':
   v = (u32)immL();
   desa_immL(v);
   return;
 default:
   desa_str("#");

   break;
 }
      break;
    default:
      desa_char('?');
      desa_usignifiant(mode);
      desa_char('?');
      break;
    }
}
