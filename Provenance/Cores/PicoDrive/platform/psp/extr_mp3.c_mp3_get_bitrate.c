
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_O_RDONLY ;
 int* bitrates ;
 int lprintf (char*,char*) ;
 int * mp3_fname ;
 int mp3_handle ;
 int mp3_last_error ;
 int** mp3_src_buffer ;
 scalar_t__ mp3_src_pos ;
 int psp_sem_lock (scalar_t__) ;
 int psp_sem_unlock (scalar_t__) ;
 int read_next_frame (int ) ;
 int sceIoClose (int) ;
 int sceIoOpen (char*,int ,int) ;
 scalar_t__ thread_busy_sem ;

int mp3_get_bitrate(void *f, int size)
{
 int ret, retval = -1, sample_rate, bitrate;

 char *fname = f;


 if (thread_busy_sem >= 0)
  psp_sem_lock(thread_busy_sem);

 if (mp3_handle >= 0) sceIoClose(mp3_handle);
 mp3_handle = sceIoOpen(fname, PSP_O_RDONLY, 0777);
 if (mp3_handle < 0) {
  lprintf("sceIoOpen(%s) failed\n", fname);
  goto end;
 }

 mp3_src_pos = 0;
 ret = read_next_frame(0);
 if (ret <= 0) {
  lprintf("read_next_frame() failed (%s)\n", fname);
  goto end;
 }
 sample_rate = (mp3_src_buffer[0][2] & 0x0c) >> 2;
 bitrate = mp3_src_buffer[0][2] >> 4;

 if (sample_rate != 0) {
  lprintf("unsupported samplerate (%s)\n", fname);
  goto end;
 }
 bitrate = bitrates[bitrate];
 if (bitrate == 0) {
  lprintf("unsupported bitrate (%s)\n", fname);
  goto end;
 }


 retval = bitrate;
end:
 if (mp3_handle >= 0) sceIoClose(mp3_handle);
 mp3_handle = -1;
 mp3_fname = ((void*)0);
 if (thread_busy_sem >= 0)
  psp_sem_unlock(thread_busy_sem);
 if (retval < 0) mp3_last_error = -1;
 return retval;
}
