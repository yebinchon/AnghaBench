
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libnx_audren_t ;



__attribute__((used)) static bool libnx_audren_audio_alive(void *data)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;

   if (!aud)
      return 0;

   return 1;
}
