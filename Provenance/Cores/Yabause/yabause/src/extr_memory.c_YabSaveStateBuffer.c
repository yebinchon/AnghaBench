
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int YabSaveStateStream (int *) ;
 int fclose (int *) ;
 size_t fread (void*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 void* malloc (size_t) ;
 int * tmpfile () ;

int YabSaveStateBuffer(void ** buffer, size_t * size)
{
   FILE * fp;
   int status;
   size_t num_read = 0;

   if (buffer != ((void*)0)) *buffer = ((void*)0);
   *size = 0;

   fp = tmpfile();

   status = YabSaveStateStream(fp);
   if (status != 0)
   {
      fclose(fp);
      return status;
   }

   fseek(fp, 0, SEEK_END);
   *size = ftell(fp);
   fseek(fp, 0, SEEK_SET);

   if (buffer != ((void*)0))
   {
      *buffer = malloc(*size);
      num_read = fread(*buffer, 1, *size, fp);
   }

   fclose(fp);
   return 0;
}
