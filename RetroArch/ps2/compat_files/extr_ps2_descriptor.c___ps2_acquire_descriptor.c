
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int entries ;
struct TYPE_3__ {scalar_t__ ref_count; int current_folder_position; int FileEntry; } ;


 int FILEENTRY_SIZE ;
 int MAX_OPEN_FILES ;
 TYPE_1__** __ps2_fdmap ;
 TYPE_1__* __ps2_fdmap_pool ;
 int _lock () ;
 int _unlock () ;
 int calloc (int,int ) ;

int __ps2_acquire_descriptor(void)
{
   int fd = -1;
   int i = 0;
   _lock();


   for (fd = 0; fd < MAX_OPEN_FILES; ++fd)
   {
      if (__ps2_fdmap[fd] == ((void*)0))
      {

         for (i = 0; i < MAX_OPEN_FILES; ++i)
         {
            if (__ps2_fdmap_pool[i].ref_count == 0)
            {
               __ps2_fdmap[fd] = &__ps2_fdmap_pool[i];
               __ps2_fdmap[fd]->ref_count = 1;
               __ps2_fdmap[fd]->current_folder_position = -1;
               __ps2_fdmap[fd]->FileEntry = calloc(sizeof(entries), FILEENTRY_SIZE);
               _unlock();
               return MAX_OPEN_FILES - fd;
            }
         }
      }
   }


   _unlock();
   return -1;
}
