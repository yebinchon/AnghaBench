
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand () ;

__attribute__((used)) static int op_check(unsigned short op)
{
 if ((op&0xf000) == 0x6000) return 0;
 if ((op&0xf0f8) == 0x50c8) return 0;
 if ((op&0xff80) == 0x4e80) return 0;
 if ((op&0xf000) == 0xa000) return 0;
 if ((op&0xf000) == 0xf000) return 0;
 if ((op&0xfff8)==0x4e70&&op!=0x4e71&&op!=0x4e76) return 0;

 if ((op&0x3f) >= 0x28) op = (op&~0x3f) | (rand() % 0x28);
 return 1;
}
