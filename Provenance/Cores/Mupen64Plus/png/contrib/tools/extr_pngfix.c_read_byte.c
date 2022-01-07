
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int status_code; scalar_t__ read_errno; int file; int read_count; } ;


 scalar_t__ EDOM ;
 scalar_t__ EINTR ;
 int EOF ;
 scalar_t__ ERANGE ;
 int INTERNAL_ERROR ;
 int TRUNCATED ;
 int UNEXPECTED_ERROR_CODE ;
 int emit_error (struct file*,int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int getc (int ) ;

__attribute__((used)) static int
read_byte(struct file *file)
{
   int ch = getc(file->file);

   if (ch >= 0 && ch <= 255)
   {
      ++(file->read_count);
      return ch;
   }

   else if (ch != EOF)
   {
      file->status_code |= INTERNAL_ERROR;
      file->read_errno = ERANGE;


      emit_error(file, UNEXPECTED_ERROR_CODE, "file read");
   }
   else
   {



      if (ferror(file->file))
         file->read_errno = errno;

      else if (feof(file->file))
         file->read_errno = 0;

      else
         file->read_errno = EDOM;
   }





   file->status_code |= TRUNCATED;
   return EOF;
}
