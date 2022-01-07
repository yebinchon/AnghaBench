
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int appendstr (char*,char*,size_t) ;
 int free (char*) ;
 int memset (char*,int ,size_t) ;
 int snd_device_name_free_hint (void**) ;
 char* snd_device_name_get_hint (void*,char*) ;
 scalar_t__ snd_device_name_hint (int,char*,void***) ;
 scalar_t__ string_is_equal (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;

__attribute__((used)) static void
enumerate_audio_devices(char *buf, size_t buflen)
{
   memset(buf, 0, buflen);

   appendstr(buf, "Audio capture device; ", buflen);
}
