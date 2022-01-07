
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int MAX (int,int) ;
 int MBIGCL_LOWAT ;
 int MBUF_GROWTH_NORMAL_THRESH ;
 int MB_GROWTH_AGGRESSIVE ;
 int MB_GROWTH_NORMAL ;
 int MC_16KCL ;
 int MC_BIGCL ;
 int MC_CL ;
 int MC_MBUF ;
 int NCLPBGSHIFT ;
 int NCLPJCLSHIFT ;
 int NMBPCLSHIFT ;
 int VERIFY (int) ;
 int m_infree (int ) ;
 int m_maxlimit (int ) ;
 size_t m_maxsize (int ) ;
 int m_minlimit (int ) ;
 int m_total (int ) ;
 int mbuf_mlock ;
 int mbwdog_logger (char*,int,int,int,int) ;
 int nclusters ;
 int njcl ;

__attribute__((used)) static int
m_howmany(int num, size_t bufsize)
{
 int i = 0, j = 0;
 u_int32_t m_mbclusters, m_clusters, m_bigclusters, m_16kclusters;
 u_int32_t m_mbfree, m_clfree, m_bigclfree, m_16kclfree;
 u_int32_t sumclusters, freeclusters;
 u_int32_t percent_pool, percent_kmem;
 u_int32_t mb_growth, mb_growth_thresh;

 VERIFY(bufsize == m_maxsize(MC_BIGCL) ||
     bufsize == m_maxsize(MC_16KCL));

 LCK_MTX_ASSERT(mbuf_mlock, LCK_MTX_ASSERT_OWNED);


 m_mbclusters = m_total(MC_MBUF) >> NMBPCLSHIFT;
 m_clusters = m_total(MC_CL);
 m_bigclusters = m_total(MC_BIGCL) << NCLPBGSHIFT;
 m_16kclusters = m_total(MC_16KCL);
 sumclusters = m_mbclusters + m_clusters + m_bigclusters;

 m_mbfree = m_infree(MC_MBUF) >> NMBPCLSHIFT;
 m_clfree = m_infree(MC_CL);
 m_bigclfree = m_infree(MC_BIGCL) << NCLPBGSHIFT;
 m_16kclfree = m_infree(MC_16KCL);
 freeclusters = m_mbfree + m_clfree + m_bigclfree;


 if ((bufsize == m_maxsize(MC_BIGCL) && sumclusters >= nclusters) ||
     (njcl > 0 && bufsize == m_maxsize(MC_16KCL) &&
     (m_16kclusters << NCLPJCLSHIFT) >= njcl)) {
  mbwdog_logger("maxed out nclusters (%u >= %u) or njcl (%u >= %u)",
      sumclusters, nclusters,
      (m_16kclusters << NCLPJCLSHIFT), njcl);
  return (0);
 }

 if (bufsize == m_maxsize(MC_BIGCL)) {

  if (m_bigclusters < m_minlimit(MC_BIGCL))
   return (m_minlimit(MC_BIGCL) - m_bigclusters);

  percent_pool =
      ((sumclusters - freeclusters) * 100) / sumclusters;
  percent_kmem = (sumclusters * 100) / nclusters;





  if (percent_kmem < MBUF_GROWTH_NORMAL_THRESH)
   mb_growth = MB_GROWTH_NORMAL;
  else
   mb_growth = MB_GROWTH_AGGRESSIVE;

  if (percent_kmem < 5) {

   i = num;
  } else {

   if (m_infree(MC_BIGCL) >= MBIGCL_LOWAT &&
       m_total(MC_BIGCL) >=
       MBIGCL_LOWAT + m_minlimit(MC_BIGCL))
    return (0);


   if (num >= m_infree(MC_BIGCL))
    i = num - m_infree(MC_BIGCL);
   if (num > m_total(MC_BIGCL) - m_minlimit(MC_BIGCL))
    j = num - (m_total(MC_BIGCL) -
        m_minlimit(MC_BIGCL));

   i = MAX(i, j);





   mb_growth_thresh = 100 - (100 / (1 << mb_growth));
   if (percent_pool > mb_growth_thresh)
    j = ((sumclusters + num) >> mb_growth) -
        freeclusters;
   i = MAX(i, j);
  }


  if (i + m_bigclusters >= m_maxlimit(MC_BIGCL))
   i = m_maxlimit(MC_BIGCL) - m_bigclusters;
  if ((i << 1) + sumclusters >= nclusters)
   i = (nclusters - sumclusters) >> 1;
  VERIFY((m_total(MC_BIGCL) + i) <= m_maxlimit(MC_BIGCL));
  VERIFY(sumclusters + (i << 1) <= nclusters);

 } else {
  VERIFY(njcl > 0);

  if (num >= m_16kclfree)
   i = num - m_16kclfree;


  if (((m_16kclusters + num) >> 1) > m_16kclfree)
   j = ((m_16kclusters + num) >> 1) - m_16kclfree;
  i = MAX(i, j);


  if ((i + m_total(MC_16KCL)) >= m_maxlimit(MC_16KCL))
   i = m_maxlimit(MC_16KCL) - m_total(MC_16KCL);
 }
 return (i);
}
