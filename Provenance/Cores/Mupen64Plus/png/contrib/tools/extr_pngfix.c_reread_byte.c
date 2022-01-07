
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ read_errno; int file; } ;
typedef int png_byte ;


 int UNEXPECTED_ERROR_CODE ;
 scalar_t__ errno ;
 int getc (int ) ;
 int stop (struct file*,int ,char*) ;

__attribute__((used)) static png_byte
reread_byte(struct file *file)



{
   int ch = getc(file->file);

   if (errno != 0)
      file->read_errno = errno;

   if (ch < 0 || ch > 255)
      stop(file, UNEXPECTED_ERROR_CODE, "reread");

   return (png_byte)ch;
}
