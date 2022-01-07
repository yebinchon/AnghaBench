
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 void* memalign (int,size_t) ;

__attribute__((used)) static inline void* _FAT_mem_align (size_t size) {



 return malloc (size);

}
