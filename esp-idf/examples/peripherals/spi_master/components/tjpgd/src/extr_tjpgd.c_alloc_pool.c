
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int sz_pool; void* pool; } ;
typedef TYPE_1__ JDEC ;



__attribute__((used)) static void* alloc_pool (
 JDEC* jd,
 uint16_t nd
)
{
 char *rp = 0;


 nd = (nd + 3) & ~3;

 if (jd->sz_pool >= nd) {
  jd->sz_pool -= nd;
  rp = (char*)jd->pool;
  jd->pool = (void*)(rp + nd);
 }

 return (void*)rp;
}
