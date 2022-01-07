
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int Z80PC; int Z80PC_BASE; int Z80SP; int Z80SP_BASE; } ;


 int BasePC ;
 TYPE_1__ CZ80 ;
 int CZ80_PC ;
 int Cz80_Set_Reg (TYPE_1__*,int ,int) ;
 int cz80_struc ;
 TYPE_1__ drZ80 ;
 int drz80_load_pcsp (int,int) ;
 int memcpy (TYPE_1__*,void const*,int) ;
 int offsetof (int ,int ) ;

__attribute__((used)) static int z80_unpack_legacy(const void *data)
{
  return -1;
}
