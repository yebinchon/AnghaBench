
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*) ;
 unsigned long fread (void*,int,unsigned long,int *) ;
 int free (void*) ;
 int fseek (int *,int ,int ) ;
 unsigned long ftell (int *) ;
 int init_module (void*,unsigned long,char const*) ;
 void* malloc (unsigned long) ;
 int stderr ;

__attribute__((used)) static int manual_insmod_26(const char *fname, const char *opts)
{
 unsigned long len, read_len;
 int ret = -1;
 void *buff;
 FILE *f;

 f = fopen(fname, "rb");
 if (f == ((void*)0))
  return -1;

 fseek(f, 0, SEEK_END);
 len = ftell(f);
 fseek(f, 0, SEEK_SET);

 buff = malloc(len);
 if (buff == ((void*)0))
  goto fail0;

 read_len = fread(buff, 1, len, f);
 if (read_len != len) {
  fprintf(stderr, "failed to read module\n");
  goto fail1;
 }

 ret = init_module(buff, len, opts);

fail1:
 free(buff);
fail0:
 fclose(f);
 return ret;
}
