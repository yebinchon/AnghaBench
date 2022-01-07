
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ml_io_read (uintptr_t,int) ;

unsigned int ml_io_read32(uintptr_t vaddr) {
 return (unsigned) ml_io_read(vaddr, 4);
}
