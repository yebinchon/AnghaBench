
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ PBI_XLD_enabled ;
 int PBI_XLD_votrax_busy_callback (void*) ;
 void* TRUE ;
 void* VOTRAXSND_busy ;
 scalar_t__ Votrax_Samples (int,int,int) ;
 double ratio ;
 int votrax_sync_samples ;
 void* votrax_written ;
 int votrax_written_byte ;

void VOTRAXSND_PutByte(UBYTE byte)
{

 votrax_sync_samples = (int)((1.0/ratio)*(double)Votrax_Samples((votrax_written_byte&0x3f), (byte&0x3f), votrax_sync_samples));
 votrax_written = TRUE;
 votrax_written_byte = byte;
 if (!VOTRAXSND_busy) {
  VOTRAXSND_busy = TRUE;





 }
}
