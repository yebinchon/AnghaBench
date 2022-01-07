
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int status_code; TYPE_1__* global; int out_name; int * out; int * file; int * chunk; int * idat; } ;
struct TYPE_2__ {int status_code; } ;


 int CLEAR (struct file) ;
 int IDAT_end (int **) ;
 int READ_ERROR_CODE ;
 int WRITE_ERROR ;
 int chunk_end (int **) ;
 int emit_error (struct file*,int ,char*) ;
 int fclose (int *) ;
 int ferror (int *) ;
 int fflush (int *) ;
 int perror (int ) ;

__attribute__((used)) static int
file_end(struct file *file)
{
   int rc;




   if (file->idat != ((void*)0))
      IDAT_end(&file->idat);

   if (file->chunk != ((void*)0))
      chunk_end(&file->chunk);

   rc = file->status_code;

   if (file->file != ((void*)0))
      (void)fclose(file->file);

   if (file->out != ((void*)0))
   {



      if (ferror(file->out) | fflush(file->out) | fclose(file->out))
      {
         perror(file->out_name);
         emit_error(file, READ_ERROR_CODE, "output write error");
         rc |= WRITE_ERROR;
      }
   }


   file->global->status_code |= rc;

   CLEAR(*file);

   return rc;
}
