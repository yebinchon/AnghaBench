
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;


 unsigned int CONNCHECK_ISDEAD ;
 unsigned int CONNRESULT_DEAD ;
 unsigned int CONNRESULT_NONE ;
 scalar_t__ rtsp_connisdead (struct connectdata*) ;

__attribute__((used)) static unsigned int rtsp_conncheck(struct connectdata *check,
                                   unsigned int checks_to_perform)
{
  unsigned int ret_val = CONNRESULT_NONE;

  if(checks_to_perform & CONNCHECK_ISDEAD) {
    if(rtsp_connisdead(check))
      ret_val |= CONNRESULT_DEAD;
  }

  return ret_val;
}
