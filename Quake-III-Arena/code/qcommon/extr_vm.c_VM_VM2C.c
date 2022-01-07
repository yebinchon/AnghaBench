
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmptr_t ;



void *VM_VM2C( vmptr_t p, int length ) {
 return (void *)p;
}
