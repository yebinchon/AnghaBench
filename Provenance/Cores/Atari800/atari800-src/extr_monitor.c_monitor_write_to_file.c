
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int FILE ;


 int * MEMORY_mem ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fwrite (int *,int,int,int *) ;
 scalar_t__ get_hex2 (int*,int*) ;
 char* get_token () ;
 int perror (char const*) ;

__attribute__((used)) static void monitor_write_to_file(void)
{
 UWORD addr1;
 UWORD addr2;
 if (get_hex2(&addr1, &addr2) && addr1 <= addr2) {
  const char *filename;
  FILE *f;
  filename = get_token();
  if (filename == ((void*)0))
   filename = "memdump.dat";
  f = fopen(filename, "wb");
  if (f == ((void*)0))
   perror(filename);
  else {
   size_t nbytes = addr2 - addr1 + 1;
   if (fwrite(&MEMORY_mem[addr1], 1, addr2 - addr1 + 1, f) < nbytes)
    perror(filename);
   fclose(f);
  }
 }
}
