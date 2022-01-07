
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {struct IDAT* idat; int * chunk; int (* alloc ) (struct file* const,int ) ;TYPE_2__* global; } ;
struct IDAT {TYPE_2__* global; TYPE_1__* idat_list_tail; TYPE_1__* idat_list_head; struct file* file; } ;
struct TYPE_3__ {scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ idat_cache; } ;


 int CLEAR (struct IDAT) ;
 int assert (int ) ;
 int stub1 (struct file* const,int ) ;

__attribute__((used)) static void
IDAT_init(struct IDAT * const idat, struct file * const file)






{
   assert(file->chunk == ((void*)0));
   assert(file->idat == ((void*)0));

   CLEAR(*idat);

   idat->file = file;
   idat->global = file->global;




   idat->global->idat_cache.count = 0;
   idat->idat_list_head = idat->idat_list_tail = &idat->global->idat_cache;




   file->alloc(file, 0 );
   assert(file->chunk != ((void*)0));




   file->idat = idat;
}
