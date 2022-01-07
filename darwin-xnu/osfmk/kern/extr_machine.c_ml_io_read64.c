
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long ml_io_read (uintptr_t,int) ;

unsigned long long ml_io_read64(uintptr_t vaddr) {
 return ml_io_read(vaddr, 8);
}
