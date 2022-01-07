
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inp (int) ;
 unsigned char* normal_keys ;
 int outp (int,int) ;

__attribute__((used)) static void keyb_int(void)
{
   static unsigned char buffer = 0;
   unsigned char rawcode = inp(0x60);

   unsigned char make_break = !(rawcode & 0x80);

   int scancode = rawcode & 0x7F;

   if (buffer == 0xE0)
   {

      if (scancode < 0x60)
         normal_keys[scancode | (1 << 8)] = make_break;

      buffer = 0;
   }
   else if (buffer >= 0xE1 && buffer <= 0xE2)
      buffer = 0;
   else if (rawcode >= 0xE0 && rawcode <= 0xE2)
      buffer = rawcode;
   else if (scancode < 0x60)
      normal_keys[scancode] = make_break;

   outp(0x20, 0x20);
}
