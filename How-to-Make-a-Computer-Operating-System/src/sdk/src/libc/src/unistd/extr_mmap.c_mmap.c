
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ off_t ;


 int SYS_mmap ;
 scalar_t__ syscall5 (int ,int ,int ,int ,int ,int ) ;

void * mmap (void *addr,size_t len,int prot,int flags,int fd,off_t offset){
 return (void*)syscall5(SYS_mmap,(uint32_t) len, (uint32_t) prot, (uint32_t) flags,(uint32_t) fd,(uint32_t) offset);
}
