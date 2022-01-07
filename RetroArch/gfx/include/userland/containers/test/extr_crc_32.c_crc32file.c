
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;
typedef int Boolean_T ;


 int EOF ;
 int Error_ ;
 int Success_ ;
 int UPDC32 (int,int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int getc (int *) ;
 int perror (char*) ;

Boolean_T crc32file(char *name, uint32_t *crc, long *charcnt)
{
      register FILE *fin;
      register uint32_t oldcrc32;
      register int c;

      oldcrc32 = 0xFFFFFFFF; *charcnt = 0;



      if ((fin=fopen(name, "r"))==((void*)0))

      {
            perror(name);
            return Error_;
      }
      while ((c=getc(fin))!=EOF)
      {
            ++*charcnt;
            oldcrc32 = UPDC32(c, oldcrc32);
      }

      if (ferror(fin))
      {
            perror(name);
            *charcnt = -1;
      }
      fclose(fin);

      *crc = oldcrc32 = ~oldcrc32;

      return Success_;
}
