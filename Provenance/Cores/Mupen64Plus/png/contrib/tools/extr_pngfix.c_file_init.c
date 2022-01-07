
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {int dummy; } ;
struct file {char const* file_name; char const* out_name; int status_code; void (* alloc ) (struct file*,int) ;void* write_errno; int * out; void* read_errno; int * file; void* alloc_ptr; int * idat; int * chunk; int state; scalar_t__ read_count; struct global* global; } ;


 int CLEAR (struct file) ;
 int FILE_ERROR ;
 int STATE_SIGNATURE ;
 int WRITE_ERROR ;
 int assert (int ) ;
 void* errno ;
 void* fopen (char const*,char*) ;
 int perror (char const*) ;

__attribute__((used)) static int
file_init(struct file *file, struct global *global, const char *file_name,
   const char *out_name, void *alloc_ptr, void (*alloc)(struct file*,int))




{
   CLEAR(*file);
   file->global = global;

   file->file_name = file_name;
   file->out_name = out_name;
   file->status_code = 0;
   file->read_errno = 0;
   file->write_errno = 0;

   file->file = ((void*)0);
   file->out = ((void*)0);


   file->read_count = 0;
   file->state = STATE_SIGNATURE;

   file->chunk = ((void*)0);
   file->idat = ((void*)0);

   file->alloc_ptr = alloc_ptr;
   file->alloc = alloc;


   assert(file_name != ((void*)0));
   file->file = fopen(file_name, "rb");

   if (file->file == ((void*)0))
   {
      file->read_errno = errno;
      file->status_code |= FILE_ERROR;

      perror(file_name);
      return FILE_ERROR;
   }

   if (out_name != ((void*)0))
   {
      file->out = fopen(out_name, "wb");

      if (file->out == ((void*)0))
      {
         file->write_errno = errno;
         file->status_code |= WRITE_ERROR;
         perror(out_name);
         return WRITE_ERROR;
      }
   }

   return 0;
}
