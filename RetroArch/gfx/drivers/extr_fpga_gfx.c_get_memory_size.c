
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int RARCH_ERR (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,unsigned int*) ;

__attribute__((used)) static unsigned int get_memory_size(void)
{
   FILE *size_fp;
   unsigned int size;




   size_fp = fopen("/sys/class/uio/uio0/maps/map0/size", "r");

   if (!size_fp)
   {
      RARCH_ERR("unable to open the uio size file\n");
      exit(1);
   }

   fscanf(size_fp, "0x%08X", &size);
   fclose(size_fp);

   return size;
}
