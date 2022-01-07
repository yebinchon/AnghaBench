
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t rem; int overflow; size_t data; } ;
typedef TYPE_1__ CSeqOutStreamBuf ;


 int memcpy (size_t,void const*,size_t) ;

__attribute__((used)) static size_t MyWrite(void *pp, const void *data, size_t size)
{
  CSeqOutStreamBuf *p = (CSeqOutStreamBuf *)pp;
  if (p->rem < size)
  {
    size = p->rem;
    p->overflow = 1;
  }
  memcpy(p->data, data, size);
  p->rem -= size;
  p->data += size;
  return size;
}
