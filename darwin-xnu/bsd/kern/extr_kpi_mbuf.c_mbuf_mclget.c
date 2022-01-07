
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mbuf_type_t ;
typedef TYPE_1__* mbuf_t ;
typedef int mbuf_how_t ;
typedef scalar_t__ errno_t ;
struct TYPE_7__ {int m_flags; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int M_EXT ;
 TYPE_1__* m_mclget (TYPE_1__*,int ) ;
 int mbuf_free (TYPE_1__*) ;
 scalar_t__ mbuf_get (int ,int ,TYPE_1__**) ;

errno_t
mbuf_mclget(mbuf_how_t how, mbuf_type_t type, mbuf_t *mbuf)
{

 errno_t error = 0;
 int created = 0;
 if (mbuf == ((void*)0))
  return (EINVAL);
 if (*mbuf == ((void*)0)) {
  error = mbuf_get(how, type, mbuf);
  if (error)
   return (error);
  created = 1;
 }





 *mbuf = m_mclget(*mbuf, how);

 if (created && ((*mbuf)->m_flags & M_EXT) == 0) {
  mbuf_free(*mbuf);
  *mbuf = ((void*)0);
 }
 if (*mbuf == ((void*)0) || ((*mbuf)->m_flags & M_EXT) == 0)
  error = ENOMEM;
 return (error);
}
