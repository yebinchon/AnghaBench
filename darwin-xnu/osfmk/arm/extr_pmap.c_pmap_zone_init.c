
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
struct pmap {int dummy; } ;


 int PAGE_SIZE ;
 int pmap_zone ;
 int zinit (int,int,int ,char*) ;

__attribute__((used)) static void
pmap_zone_init(
 void)
{




 pmap_zone = zinit((vm_size_t) sizeof(struct pmap), (vm_size_t) sizeof(struct pmap)*256,
                   PAGE_SIZE, "pmap");
}
