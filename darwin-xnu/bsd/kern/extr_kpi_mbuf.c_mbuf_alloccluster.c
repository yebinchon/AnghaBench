
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_how_t ;
typedef int errno_t ;
typedef int * caddr_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;
 size_t M16KCLBYTES ;
 size_t MBIGCLBYTES ;
 size_t MCLBYTES ;
 int * m_16kalloc (int ) ;
 int * m_bigalloc (int ) ;
 int * m_mclalloc (int ) ;
 scalar_t__ njcl ;

errno_t
mbuf_alloccluster(mbuf_how_t how, size_t *size, caddr_t *addr)
{
 if (size == ((void*)0) || *size == 0 || addr == ((void*)0))
  return (EINVAL);

 *addr = ((void*)0);


 if (*size > MBIGCLBYTES && njcl == 0)
  return (ENOTSUP);

 if (*size <= MCLBYTES && (*addr = m_mclalloc(how)) != ((void*)0))
  *size = MCLBYTES;
 else if (*size > MCLBYTES && *size <= MBIGCLBYTES &&
     (*addr = m_bigalloc(how)) != ((void*)0))
  *size = MBIGCLBYTES;
 else if (*size > MBIGCLBYTES && *size <= M16KCLBYTES &&
     (*addr = m_16kalloc(how)) != ((void*)0))
  *size = M16KCLBYTES;
 else
  *size = 0;

 if (*addr == ((void*)0))
  return (ENOMEM);

 return (0);
}
