
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;
typedef int FILE ;


 int O_CREAT ;
 int O_RDWR ;
 int _IOFBF ;
 void* calloc (int,int) ;
 int config_file_dump (int *,int *,int) ;
 int config_file_dump_orbis (int *,int) ;
 int fclose (int *) ;
 scalar_t__ fopen_utf8 (char const*,char*) ;
 int free (void*) ;
 int orbisClose (int) ;
 int orbisOpen (char const*,int,int) ;
 int setvbuf (int *,char*,int ,int) ;
 int * stdout ;
 int string_is_empty (char const*) ;

bool config_file_write(config_file_t *conf, const char *path, bool sort)
{
   if (!string_is_empty(path))
   {







      void* buf = ((void*)0);
      FILE *file = (FILE*)fopen_utf8(path, "wb");
      if (!file)
         return 0;



      buf = calloc(1, 0x4000);
      setvbuf(file, (char*)buf, _IOFBF, 0x4000);


      config_file_dump(conf, file, sort);

      if (file != stdout)
         fclose(file);
      if (buf)
         free(buf);

   }
   else
      config_file_dump(conf, stdout, sort);

   return 1;
}
