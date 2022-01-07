
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ read_errno; int file; } ;


 int SEEK_CUR ;
 int UNEXPECTED_ERROR_CODE ;
 scalar_t__ errno ;
 scalar_t__ fseek (int ,int,int ) ;
 int stop (struct file*,int ,char*) ;

__attribute__((used)) static void
skip_12(struct file *file)



{

   if (fseek(file->file, 12, SEEK_CUR) != 0)
   {
      if (errno != 0)
         file->read_errno = errno;

      stop(file, UNEXPECTED_ERROR_CODE, "reskip");
   }
}
