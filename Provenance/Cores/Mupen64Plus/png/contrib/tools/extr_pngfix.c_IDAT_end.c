
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int state; int * chunk; } ;
struct IDAT {struct file* file; } ;


 int CLEAR (struct IDAT) ;
 int STATE_CHUNKS ;
 int assert (int ) ;
 int chunk_end (int **) ;

__attribute__((used)) static void
IDAT_end(struct IDAT **idat_var)
{
   struct IDAT *idat = *idat_var;
   struct file *file = idat->file;

   *idat_var = ((void*)0);

   CLEAR(*idat);

   assert(file->chunk != ((void*)0));
   chunk_end(&file->chunk);





   file->state = STATE_CHUNKS;
}
