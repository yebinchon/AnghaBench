
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
 int * m_clattach (int *,int ,int *,void (*) (caddr_t,u_int,caddr_t),size_t,int *,int ,int) ;
 int mbuf_alloccluster (int ,size_t*,int **) ;
 int mbuf_freecluster (int *,size_t) ;

errno_t
mbuf_ring_cluster_alloc(mbuf_how_t how, mbuf_type_t type, mbuf_t *mbuf,
    void (*extfree)(caddr_t, u_int, caddr_t), size_t *size)
{
 caddr_t extbuf = ((void*)0);
 errno_t err;

 if (mbuf == ((void*)0) || extfree == ((void*)0) || size == ((void*)0) || *size == 0)
  return (EINVAL);

 if ((err = mbuf_alloccluster(how, size, &extbuf)) != 0)
  return (err);

 if ((*mbuf = m_clattach(*mbuf, type, extbuf,
     extfree, *size, ((void*)0), how, 1)) == ((void*)0)) {
  mbuf_freecluster(extbuf, *size);
  return (ENOMEM);
 }

 return (0);
}
