
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;
typedef int SWORD ;


 scalar_t__ FALSE ;
 int VTRX_BLOCK_SIZE ;
 int Votrax_PutByte (int ) ;
 scalar_t__ bit16 ;
 int mix (int *,int ,int,int) ;
 int mix8 (int *,int ,int,int) ;
 int num_pokeys ;
 int temp_votrax_buffer ;
 int votrax_buffer ;
 int votrax_process (int ,int,int ) ;
 scalar_t__ votrax_written ;
 int votrax_written_byte ;
 int votraxsnd_enabled () ;

void VOTRAXSND_Process(void *sndbuffer, int sndn)
{
 if (!votraxsnd_enabled()) return;

 if(votrax_written) {
  votrax_written = FALSE;
  Votrax_PutByte(votrax_written_byte);
 }
 sndn /= num_pokeys;
 while (sndn > 0) {
  int amount = ((sndn > VTRX_BLOCK_SIZE) ? VTRX_BLOCK_SIZE : sndn);
  votrax_process(votrax_buffer, amount, temp_votrax_buffer);
  if (bit16) mix((SWORD *)sndbuffer, votrax_buffer, amount, 128/4);
  else mix8((UBYTE *)sndbuffer, votrax_buffer, amount, 128/4);
  sndbuffer = (char *) sndbuffer + VTRX_BLOCK_SIZE*(bit16 ? 2 : 1)*((num_pokeys == 2) ? 2: 1);
  sndn -= VTRX_BLOCK_SIZE;
 }
}
