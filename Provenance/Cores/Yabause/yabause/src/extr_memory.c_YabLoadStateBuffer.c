
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int YabLoadStateStream (int *) ;
 int fclose (int *) ;
 int fseek (int *,int ,int ) ;
 int fwrite (void const*,int,size_t,int *) ;
 int * tmpfile () ;

int YabLoadStateBuffer(const void * buffer, size_t size)
{
   FILE * fp;
   int status;

   fp = tmpfile();
   fwrite(buffer, 1, size, fp);

   fseek(fp, 0, SEEK_SET);

   status = YabLoadStateStream(fp);
   fclose(fp);

   return status;
}
