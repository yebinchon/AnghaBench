
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _go32_dpmi_registers ;


 unsigned char SCAN_LEFTALT ;
 unsigned char SCAN_LEFTCONTROL ;
 unsigned char inp (int) ;
 unsigned char* keybuf ;
 int lastsc ;
 int newk ;
 int outp (int,int) ;

__attribute__((used)) static void ihandler(_go32_dpmi_registers *r)
{
 unsigned char scode=inp(0x60);


 if(scode!=0xE0)
 {
  int offs=0;




  if(lastsc==0xE0)
   if((scode&0x7F)==SCAN_LEFTALT || (scode&0x7F)==SCAN_LEFTCONTROL)
    offs=0x80;


  keybuf[(scode&0x7f)|offs]=((scode&0x80)^0x80);
  newk++;
 }
 lastsc=scode;

 outp(0x20,0x20);
}
