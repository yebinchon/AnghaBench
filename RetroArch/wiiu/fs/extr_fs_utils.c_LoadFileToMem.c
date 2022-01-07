
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int close (int) ;
 int free (int *) ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ malloc (scalar_t__) ;
 int open (char const*,int ) ;
 int read (int,int *,scalar_t__) ;

int LoadFileToMem(const char *filepath, u8 **inbuffer, u32 *size)
{
   u8 *buffer;
   u32 filesize;
   int iFd;
   u32 blocksize = 0x4000;
   u32 done = 0;
   int readBytes = 0;


   *inbuffer = ((void*)0);

   if (size)
      *size = 0;

   iFd = open(filepath, O_RDONLY);
   if (iFd < 0)
      return -1;

   filesize = lseek(iFd, 0, SEEK_END);
   lseek(iFd, 0, SEEK_SET);

   buffer = (u8 *) malloc(filesize);
   if (buffer == ((void*)0))
   {
      close(iFd);
      return -2;
   }

   while(done < filesize)
   {
      if (done + blocksize > filesize)
         blocksize = filesize - done;
      readBytes = read(iFd, buffer + done, blocksize);
      if (readBytes <= 0)
         break;
      done += readBytes;
   }

   close(iFd);

   if (done != filesize)
   {
      free(buffer);
      return -3;
   }

   *inbuffer = buffer;


   if (size)
      *size = filesize;

   return filesize;
}
