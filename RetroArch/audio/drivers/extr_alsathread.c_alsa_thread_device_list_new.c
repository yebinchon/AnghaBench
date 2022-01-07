
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {scalar_t__ i; } ;
typedef void string_list ;


 int free (char*) ;
 int snd_device_name_free_hint (void**) ;
 char* snd_device_name_get_hint (void*,char*) ;
 scalar_t__ snd_device_name_hint (int,char*,void***) ;
 scalar_t__ string_is_equal (char*,char*) ;
 int string_list_append (void*,char*,union string_list_elem_attr) ;
 int string_list_free (void*) ;
 void* string_list_new () ;

__attribute__((used)) static void *alsa_thread_device_list_new(void *data)
{
   void **hints, **n;
   union string_list_elem_attr attr;
   struct string_list *s = string_list_new();

   if (!s)
      return ((void*)0);

   attr.i = 0;

   if (snd_device_name_hint(-1, "pcm", &hints) != 0)
      goto error;

   n = hints;

   while (*n != ((void*)0))
   {
      char *name = snd_device_name_get_hint(*n, "NAME");
      char *io = snd_device_name_get_hint(*n, "IOID");
      char *desc = snd_device_name_get_hint(*n, "DESC");




      if (!io || string_is_equal(io,"Output"))
         string_list_append(s, name, attr);

      if (name)
         free(name);
      if (io)
         free(io);
      if (desc)
         free(desc);

      n++;
   }


   snd_device_name_free_hint(hints);

   return s;

error:
   string_list_free(s);
   return ((void*)0);
}
