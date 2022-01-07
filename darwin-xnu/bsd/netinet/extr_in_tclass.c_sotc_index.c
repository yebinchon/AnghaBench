
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_T_MAX ;
 size_t SOTCIX_AV ;
 size_t SOTCIX_BE ;
 size_t SOTCIX_BK ;
 size_t SOTCIX_BK_SYS ;
 size_t SOTCIX_CTL ;
 size_t SOTCIX_OAM ;
 size_t SOTCIX_RD ;
 size_t SOTCIX_RV ;
 size_t SOTCIX_VI ;
 size_t SOTCIX_VO ;
__attribute__((used)) static size_t
sotc_index(int sotc)
{
 switch (sotc) {
  case 137:
   return (SOTCIX_BK_SYS);
  case 130:
  case 138:
   return (SOTCIX_BK);

  case 139:
   return (SOTCIX_BE);
  case 134:
   return (SOTCIX_RD);
  case 135:
   return (SOTCIX_OAM);

  case 140:
   return (SOTCIX_AV);
  case 133:
   return (SOTCIX_RV);
  case 129:
  case 132:
   return (SOTCIX_VI);

  case 128:
  case 131:
   return (SOTCIX_VO);
  case 136:
   return (SOTCIX_CTL);

  default:
   break;
 }



 return (SIZE_T_MAX);
}
