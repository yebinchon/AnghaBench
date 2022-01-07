
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_uuid; } ;


 int memcpy (unsigned char*,int ,int) ;

void
proc_getexecutableuuid(proc_t p, unsigned char *uuidbuf, unsigned long size)
{
 if (size >= sizeof(p->p_uuid)) {
  memcpy(uuidbuf, p->p_uuid, sizeof(p->p_uuid));
 }
}
