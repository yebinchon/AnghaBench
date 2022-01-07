
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int int32 ;
typedef int _go32_dpmi_registers ;


 int LMBuffer ;
 int ReadPtr ;
 int SBDMA ;
 int SBDMA16 ;
 int SBIRQ ;
 int SBPort ;
 int UpdateJoyData () ;
 scalar_t__ WaveBuffer ;
 int _dos_ds ;
 int _farnspokel (int,int) ;
 int _farsetsel (int ) ;
 int format ;
 int fragsize ;
 int fragtotal ;
 int hbusy ;
 int inportb (int) ;
 int outportb (int,int) ;
 int soundjoyer ;
 scalar_t__ soundjoyeron ;
 scalar_t__ ssilence ;
 int whichbuf ;

__attribute__((used)) static void SBIRQHandler(_go32_dpmi_registers *r)
{
        uint32 *src;
 uint32 dest;
 int32 x;


        if(format)
        {
         uint8 status;

         outportb(SBPort+4,0x82);
         status=inportb(SBPort+5);
         if(status&2)
          inportb(SBPort+0x0F);
        }
        else
         inportb(SBPort+0x0E);
        if(hbusy)
        {
         outportb(0x20,0x20);
         if(SBIRQ>=8)
          outportb(0xA0,0x20);
         whichbuf^=1;
         return;
        }
        hbusy=1;

        {


         uint32 count;
  uint32 block;
  uint32 port;

         if(format)
          port=((SBDMA16&3)*4)+0xc2;
         else
          port=(SBDMA*2)+1;

         count=inportb(port);
         count|=inportb(port)<<8;

         if(count>=fragsize)
          block=1;
         else
          block=0;
         dest=LMBuffer+((block*fragsize)<<format);





        }

        _farsetsel(_dos_ds);

        src=(uint32 *)(WaveBuffer+(ReadPtr<<format));

 if(ssilence)
 {
  uint32 sby;
  if(format) sby=0;
  else sby=0x80808080;

         for(x=(fragsize<<format)>>2;x;x--,dest+=4)
         {
          _farnspokel(dest,sby);
         }
 }
 else
 {
         for(x=(fragsize<<format)>>2;x;x--,dest+=4,src++)
         {
          _farnspokel(dest,*src);
         }
         ReadPtr=(ReadPtr+fragsize)&(fragtotal-1);
 }

        if(soundjoyeron)
        {
         static int coot=0;
         if(!coot)
         {
          UpdateJoyData();
          soundjoyer=1;
         }
         coot=(coot+1)&3;
        }
        hbusy=0;
        outportb(0x20,0x20);
        if(SBIRQ>=8)
         outportb(0xA0,0x20);
}
