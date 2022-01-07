
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int FILE ;


 int * MEMORY_mem ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (int *,int,int,int *) ;
 scalar_t__ get_hex2 (int*,int*) ;
 char* get_token () ;
 int perror (char const*) ;

__attribute__((used)) static void monitor_read_from_file(UWORD *addr)
{
 const char *filename;
 filename = get_token();
 if (filename != ((void*)0)) {
  UWORD nbytes;
  if (get_hex2(addr, &nbytes) && *addr + nbytes <= 0x10000) {
   FILE *f = fopen(filename, "rb");
   if (f == ((void*)0))
    perror(filename);
   else {
    if (fread(&MEMORY_mem[*addr], 1, nbytes, f) == 0)
     perror(filename);
    fclose(f);
   }
  }
 }
}
