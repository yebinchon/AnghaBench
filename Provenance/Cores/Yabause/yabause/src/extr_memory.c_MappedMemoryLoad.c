
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
typedef int FILE ;


 int MappedMemoryWriteByte (size_t,int ) ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,size_t,int *) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 scalar_t__ malloc (size_t) ;

int MappedMemoryLoad(const char *filename, u32 addr)
{
   FILE *fp;
   u32 filesize;
   u8 *buffer;
   u32 i;
   size_t num_read = 0;

   if (!filename)
      return -1;

   if ((fp = fopen(filename, "rb")) == ((void*)0))
      return -1;


   fseek(fp, 0, SEEK_END);
   filesize = ftell(fp);
   fseek(fp, 0, SEEK_SET);

   if ((buffer = (u8 *)malloc(filesize)) == ((void*)0))
   {
      fclose(fp);
      return -2;
   }

   num_read = fread((void *)buffer, 1, filesize, fp);
   fclose(fp);

   for (i = 0; i < filesize; i++)
      MappedMemoryWriteByte(addr+i, buffer[i]);

   free(buffer);

   return 0;
}
