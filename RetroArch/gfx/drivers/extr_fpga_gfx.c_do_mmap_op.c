
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ only_munmap; int fd; scalar_t__ ptr; scalar_t__ only_mmap; } ;
typedef TYPE_1__ RegOp ;


 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RARCH_ERR (char*) ;
 int close (int) ;
 int exit (int) ;
 int get_memory_size () ;
 scalar_t__ mmap (int *,int ,int,int ,int,int ) ;
 int munmap (scalar_t__,int ) ;
 int open (char*,int ) ;

__attribute__((used)) static void do_mmap_op(RegOp *regOp)
{
   if (regOp->only_munmap == 0)
   {
      regOp->fd = open("/dev/uio0", O_RDWR);

      if (regOp->fd < 1)
         return;

      regOp->ptr = mmap(((void*)0), get_memory_size(), PROT_READ|PROT_WRITE, MAP_SHARED, regOp->fd, 0);

      if (regOp->ptr == MAP_FAILED)
      {
         RARCH_ERR("could not mmap() memory\n");
         exit(1);
      }
   }

   if (regOp->only_mmap == 0)
   {
      if (munmap(regOp->ptr, get_memory_size()) == -1)
      {
         RARCH_ERR("could not munmap() memory\n");
         exit(1);
      }

      close(regOp->fd);
   }

   return;
}
