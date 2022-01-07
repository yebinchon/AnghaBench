
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_class_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int m_maxlimit (int ) ;
 int m_peak (int ) ;
 int m_total (int ) ;
 scalar_t__ mb_peak_newreport ;

__attribute__((used)) static boolean_t
mbuf_report_usage(mbuf_class_t cl)
{

 if (mb_peak_newreport)
  return (TRUE);

 if (m_total(cl) > m_peak(cl) &&
     m_total(cl) >= (m_maxlimit(cl) >> 4) &&
     (m_total(cl) - m_peak(cl)) >= (m_peak(cl) >> 5))
  return (TRUE);
 return (FALSE);
}
