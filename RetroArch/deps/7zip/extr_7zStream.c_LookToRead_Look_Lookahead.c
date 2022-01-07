
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Read ) (TYPE_2__*,void*,size_t*) ;} ;
struct TYPE_3__ {size_t size; size_t pos; void* buf; TYPE_2__* realStream; } ;
typedef int SRes ;
typedef TYPE_1__ CLookToRead ;


 size_t LookToRead_BUF_SIZE ;
 int SZ_OK ;
 int stub1 (TYPE_2__*,void*,size_t*) ;

__attribute__((used)) static SRes LookToRead_Look_Lookahead(void *pp, const void **buf, size_t *size)
{
   SRes res = SZ_OK;
   CLookToRead *p = (CLookToRead *)pp;
   size_t size2 = p->size - p->pos;
   if (size2 == 0 && *size > 0)
   {
      p->pos = 0;
      size2 = LookToRead_BUF_SIZE;
      res = p->realStream->Read(p->realStream, p->buf, &size2);
      p->size = size2;
   }
   if (size2 < *size)
      *size = size2;
   *buf = p->buf + p->pos;
   return res;
}
