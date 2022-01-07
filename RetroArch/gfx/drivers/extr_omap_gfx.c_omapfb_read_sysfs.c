
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,size_t,int *) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int omapfb_read_sysfs(const char *fname, char *buff, size_t size)
{
   int ret;
   FILE *f = fopen(fname, "r");

   if (!f)
      return -1;

   ret = fread(buff, 1, size - 1, f);
   fclose(f);

   if (ret <= 0)
      return -1;

   buff[ret] = 0;
   for (ret--; ret >= 0 && isspace(buff[ret]); ret--)
      buff[ret] = 0;

   return 0;
}
