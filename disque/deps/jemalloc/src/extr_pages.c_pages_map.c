
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int PAGE_READWRITE ;
 int PROT_READ ;
 int PROT_WRITE ;
 void* VirtualAlloc (void*,size_t,int,int ) ;
 int assert (int) ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 int pages_unmap (void*,size_t) ;

void *
pages_map(void *addr, size_t size)
{
 void *ret;

 assert(size != 0);
 ret = mmap(addr, size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON,
     -1, 0);
 assert(ret != ((void*)0));

 if (ret == MAP_FAILED)
  ret = ((void*)0);
 else if (addr != ((void*)0) && ret != addr) {



  pages_unmap(ret, size);
  ret = ((void*)0);
 }

 assert(ret == ((void*)0) || (addr == ((void*)0) && ret != addr)
     || (addr != ((void*)0) && ret == addr));
 return (ret);
}
