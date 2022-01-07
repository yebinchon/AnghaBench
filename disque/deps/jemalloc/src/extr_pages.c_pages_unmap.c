
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFERROR_BUF ;
 int MEM_RELEASE ;
 scalar_t__ VirtualFree (void*,int ,int ) ;
 int abort () ;
 int buferror (int ,char*,int) ;
 int get_errno () ;
 int malloc_printf (char*,char*) ;
 int munmap (void*,size_t) ;
 scalar_t__ opt_abort ;

void
pages_unmap(void *addr, size_t size)
{




 if (munmap(addr, size) == -1)

 {
  char buf[BUFERROR_BUF];

  buferror(get_errno(), buf, sizeof(buf));
  malloc_printf("<jemalloc>: Error in "



                "munmap"

                "(): %s\n", buf);
  if (opt_abort)
   abort();
 }
}
