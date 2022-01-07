
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_type_t ;
typedef int * mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;
typedef int * caddr_t ;


 int EINVAL ;
 int ENOMEM ;
 int * m_clattach (int *,int ,int *,void (*) (int *,u_int,int *),size_t,int *,int ,int ) ;

errno_t
mbuf_attachcluster(mbuf_how_t how, mbuf_type_t type, mbuf_t *mbuf,
    caddr_t extbuf, void (*extfree)(caddr_t, u_int, caddr_t),
    size_t extsize, caddr_t extarg)
{
 if (mbuf == ((void*)0) || extbuf == ((void*)0) || extfree == ((void*)0) || extsize == 0)
  return (EINVAL);

 if ((*mbuf = m_clattach(*mbuf, type, extbuf,
     extfree, extsize, extarg, how, 0)) == ((void*)0))
  return (ENOMEM);

 return (0);
}
