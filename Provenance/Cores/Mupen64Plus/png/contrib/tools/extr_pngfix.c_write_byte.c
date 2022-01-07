
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int write_count; int status_code; int write_errno; int * out; } ;


 int WRITE_ERROR ;
 int WRITE_ERROR_CODE ;
 int errno ;
 int putc (int,int *) ;
 int stop (struct file*,int ,char*) ;

__attribute__((used)) static void
write_byte(struct file *file, int b)




{
   if (file->out != ((void*)0))
   {
      if (putc(b, file->out) != b)
      {
         file->write_errno = errno;
         file->status_code |= WRITE_ERROR;
         stop(file, WRITE_ERROR_CODE, "write byte");
      }
   }

   ++(file->write_count);
}
