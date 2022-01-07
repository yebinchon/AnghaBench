
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mach_get_times (int *,int *,int *) ;

__attribute__((used)) static void
update(uint64_t *a, uint64_t *c) {
 mach_get_times(a,c,((void*)0));
}
