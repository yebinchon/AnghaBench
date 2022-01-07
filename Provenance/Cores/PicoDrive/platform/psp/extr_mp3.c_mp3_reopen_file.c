
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_O_RDONLY ;
 int PSP_SEEK_SET ;
 int lprintf (char*,char*) ;
 char* mp3_fname ;
 scalar_t__ mp3_handle ;
 int mp3_src_pos ;
 int sceIoClose (scalar_t__) ;
 int sceIoLseek32 (scalar_t__,int ,int ) ;
 scalar_t__ sceIoOpen (char*,int ,int) ;

void mp3_reopen_file(void)
{
 if (mp3_fname == ((void*)0)) return;
 lprintf("mp3_reopen_file(%s)\n", mp3_fname);


 if (mp3_handle >= 0) sceIoClose(mp3_handle);

 mp3_handle = sceIoOpen(mp3_fname, PSP_O_RDONLY, 0777);
 if (mp3_handle >= 0)
  sceIoLseek32(mp3_handle, mp3_src_pos, PSP_SEEK_SET);
 lprintf("mp3_reopen_file %s\n", mp3_handle >= 0 ? "ok" : "failed");
}
