
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Votrax_interface {int num; int BusyCallback; } ;
typedef int SWORD ;


 scalar_t__ Atari800_TV_PAL ;
 scalar_t__ Atari800_tv_mode ;
 void* FALSE ;
 int Log_print (char*,int) ;
 void* PBI_XLD_v_enabled ;
 scalar_t__ Util_malloc (int) ;
 int VOICEBOX_BASEAUDF ;
 void* VOICEBOX_enabled ;
 void* VOTRAXSND_busy ;
 int VOTRAXSND_busy_callback_async ;
 int VTRX_BLOCK_SIZE ;
 scalar_t__ VTRX_RATE ;
 int Votrax_Start (void*) ;
 int Votrax_Stop () ;
 int bit16 ;
 int dsprate ;
 int free (int *) ;
 int num_pokeys ;
 int ratio ;
 int samples_per_frame ;
 int * temp_votrax_buffer ;
 int * votrax_buffer ;
 scalar_t__ votrax_sync_samples ;
 int votraxsnd_enabled () ;

void VOTRAXSND_Init(int playback_freq, int n_pokeys, int b16)
{
 static struct Votrax_interface vi;
 int temp_votrax_buffer_size;
 bit16 = b16;
 dsprate = playback_freq;
 num_pokeys = n_pokeys;
 if (!votraxsnd_enabled()) return;
 if (num_pokeys != 1 && num_pokeys != 2) {
  Log_print("VOTRAXSND_Init: cannot handle num_pokeys=%d", num_pokeys);






  return;
 }
 vi.num = 1;
 vi.BusyCallback = VOTRAXSND_busy_callback_async;
 Votrax_Stop();
 Votrax_Start((void *)&vi);
 samples_per_frame = dsprate/(Atari800_tv_mode == Atari800_TV_PAL ? 50 : 60);
 ratio = (double)VTRX_RATE/(double)dsprate;



 temp_votrax_buffer_size = (int)(VTRX_BLOCK_SIZE*ratio + 10);

 free(temp_votrax_buffer);
 temp_votrax_buffer = (SWORD *)Util_malloc(temp_votrax_buffer_size*sizeof(SWORD));
 free(votrax_buffer);
 votrax_buffer = (SWORD *)Util_malloc(VTRX_BLOCK_SIZE*sizeof(SWORD));

 VOTRAXSND_busy = FALSE;
 votrax_sync_samples = 0;
}
