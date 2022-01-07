
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Read ) (TYPE_2__*,void*,size_t*) ;} ;
struct TYPE_3__ {TYPE_2__* realStream; } ;
typedef int SRes ;
typedef TYPE_1__ CSecToRead ;


 int stub1 (TYPE_2__*,void*,size_t*) ;

__attribute__((used)) static SRes SecToRead_Read(void *pp, void *buf, size_t *size)
{
   CSecToRead *p = (CSecToRead *)pp;
   return p->realStream->Read(p->realStream, buf, size);
}
