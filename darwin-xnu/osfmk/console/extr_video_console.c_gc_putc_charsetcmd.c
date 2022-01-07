
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESnormal ;
 int* gc_charset ;
 int gc_vt100state ;

__attribute__((used)) static void
gc_putc_charsetcmd(int charset, unsigned char ch)
{
 gc_vt100state = ESnormal;

 switch (ch) {
  case 'A' :
  case 'B' :
  default:
   gc_charset[charset] = 0;
   break;
  case '0' :
  case '2' :
   gc_charset[charset] = 0x21;
   break;
 }

}
