
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int DEST_COPY_AREA ;
 int __nosan_memcpy (scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ pal_hib_map (int ,scalar_t__) ;

uintptr_t
hibernate_restore_phys_page(uint64_t src, uint64_t dst, uint32_t len, uint32_t procFlags)
{
 (void)procFlags;
 uint64_t * d;
 uint64_t * s;

 if (src == 0)
  return (uintptr_t)dst;

 d = (uint64_t *)pal_hib_map(DEST_COPY_AREA, dst);
 s = (uint64_t *) (uintptr_t)src;

 __nosan_memcpy(d, s, len);

 return (uintptr_t)d;
}
