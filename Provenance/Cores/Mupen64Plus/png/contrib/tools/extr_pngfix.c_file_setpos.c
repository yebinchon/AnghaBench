
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int file_name; int file; } ;
typedef int fpos_t ;


 int READ_ERROR_CODE ;
 scalar_t__ fsetpos (int ,int const*) ;
 int perror (int ) ;
 int stop (struct file*,int ,char*) ;

__attribute__((used)) static void
file_setpos(struct file *file, const fpos_t *pos)
{
   if (fsetpos(file->file, pos))
   {
      perror(file->file_name);
      stop(file, READ_ERROR_CODE, "fsetpos");
   }
}
