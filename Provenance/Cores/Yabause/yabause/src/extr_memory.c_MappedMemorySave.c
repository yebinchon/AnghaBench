
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
typedef int FILE ;


 int MappedMemoryReadByte (size_t) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int *) ;
 int fwrite (void*,int,size_t,int *) ;
 scalar_t__ malloc (size_t) ;

int MappedMemorySave(const char *filename, u32 addr, u32 size)
{
   FILE *fp;
   u8 *buffer;
   u32 i;

   if (!filename)
      return -1;

   if ((fp = fopen(filename, "wb")) == ((void*)0))
      return -1;

   if ((buffer = (u8 *)malloc(size)) == ((void*)0))
   {
      fclose(fp);
      return -2;
   }

   for (i = 0; i < size; i++)
      buffer[i] = MappedMemoryReadByte(addr+i);

   fwrite((void *)buffer, 1, size, fp);
   fclose(fp);
   free(buffer);

   return 0;
}
