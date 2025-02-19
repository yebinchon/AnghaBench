
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;


 int SO_TC_BE ;
 int SO_TC_BK_SYS ;
 int SO_TC_VI ;
 int SO_TC_VO ;

__attribute__((used)) static u_int32_t
so_tc_from_dscp(u_int8_t dscp)
{
 u_int32_t tc;

 if (dscp >= 0x30 && dscp <= 0x3f)
  tc = SO_TC_VO;
 else if (dscp >= 0x20 && dscp <= 0x2f)
  tc = SO_TC_VI;
 else if (dscp >= 0x08 && dscp <= 0x17)
  tc = SO_TC_BK_SYS;
 else
  tc = SO_TC_BE;

 return (tc);
}
