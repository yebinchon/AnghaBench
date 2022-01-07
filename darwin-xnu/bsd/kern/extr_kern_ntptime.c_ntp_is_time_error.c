
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STA_CLOCKERR ;
 int STA_UNSYNC ;

__attribute__((used)) static bool
ntp_is_time_error(int tsl)
{

 if (tsl & (STA_UNSYNC | STA_CLOCKERR))
  return (1);

 return (0);
}
