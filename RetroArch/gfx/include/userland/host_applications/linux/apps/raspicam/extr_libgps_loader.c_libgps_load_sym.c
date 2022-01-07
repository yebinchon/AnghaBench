
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dlerror () ;
 void* dlsym (void*,char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static int libgps_load_sym(void **func, void *handle, char *symbol)
{
   char *sym_error;

   *func = dlsym(handle, symbol);
   if ((sym_error = dlerror()) != ((void*)0))
   {
      fprintf(stderr, "%s\n", sym_error);
      return -1;
   }
   return 0;
}
