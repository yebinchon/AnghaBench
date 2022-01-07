
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int mbuf_svc_class_t ;


 int MBUF_SC_AV ;
 int MBUF_SC_BE ;
 int MBUF_SC_BK ;
 int MBUF_SC_BK_SYS ;
 int MBUF_SC_CTL ;
 int MBUF_SC_OAM ;
 int MBUF_SC_RD ;
 int MBUF_SC_RV ;
 int MBUF_SC_VI ;
 int MBUF_SC_VO ;
 int VERIFY (int ) ;

mbuf_svc_class_t
m_service_class_from_idx(u_int32_t i)
{
 mbuf_svc_class_t sc = MBUF_SC_BE;

 switch (i) {
 case 134:
  return (MBUF_SC_BK_SYS);

 case 135:
  return (MBUF_SC_BK);

 case 136:
  return (MBUF_SC_BE);

 case 131:
  return (MBUF_SC_RD);

 case 132:
  return (MBUF_SC_OAM);

 case 137:
  return (MBUF_SC_AV);

 case 130:
  return (MBUF_SC_RV);

 case 129:
  return (MBUF_SC_VI);

 case 128:
  return (MBUF_SC_VO);

 case 133:
  return (MBUF_SC_CTL);

 default:
  break;
 }

 VERIFY(0);

 return (sc);
}
