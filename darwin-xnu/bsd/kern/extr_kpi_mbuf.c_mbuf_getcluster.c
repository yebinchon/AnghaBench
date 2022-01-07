
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int mbuf_type_t ;
typedef TYPE_1__* mbuf_t ;
typedef int mbuf_how_t ;
typedef scalar_t__ errno_t ;
struct TYPE_11__ {int m_flags; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 scalar_t__ ENOTSUP ;
 size_t M16KCLBYTES ;
 size_t MBIGCLBYTES ;
 size_t MCLBYTES ;
 int M_EXT ;
 TYPE_1__* m_get (int ,int ) ;
 TYPE_1__* m_m16kget (TYPE_1__*,int ) ;
 TYPE_1__* m_mbigget (TYPE_1__*,int ) ;
 TYPE_1__* m_mclget (TYPE_1__*,int ) ;
 int mbuf_free (TYPE_1__*) ;
 scalar_t__ njcl ;

errno_t
mbuf_getcluster(mbuf_how_t how, mbuf_type_t type, size_t size, mbuf_t *mbuf)
{

 errno_t error = 0;
 int created = 0;

 if (mbuf == ((void*)0))
  return (EINVAL);
 if (*mbuf == ((void*)0)) {
  *mbuf = m_get(how, type);
  if (*mbuf == ((void*)0))
   return (ENOMEM);
  created = 1;
 }




 if (size == MCLBYTES) {
  *mbuf = m_mclget(*mbuf, how);
 } else if (size == MBIGCLBYTES) {
  *mbuf = m_mbigget(*mbuf, how);
 } else if (size == M16KCLBYTES) {
  if (njcl > 0) {
   *mbuf = m_m16kget(*mbuf, how);
  } else {

   error = ENOTSUP;
   goto out;
  }
 } else {
  error = EINVAL;
  goto out;
 }
 if (*mbuf == ((void*)0) || ((*mbuf)->m_flags & M_EXT) == 0)
  error = ENOMEM;
out:
 if (created && error != 0) {
  mbuf_free(*mbuf);
  *mbuf = ((void*)0);
 }
 return (error);
}
