
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct sockbuf {scalar_t__ sb_hiwat; } ;


 int MCLSHIFT ;
 int MSIZESHIFT ;
 int OSIncrementAtomic64 (int *) ;
 int nmbclusters ;
 int sbmb_limreached ;
 scalar_t__ total_sbmb_cnt ;

u_int8_t
tcp_cansbgrow(struct sockbuf *sb)
{




 u_int32_t mblim = ((nmbclusters >> 1) << (MCLSHIFT - MSIZESHIFT));





 u_int32_t sbspacelim = ((nmbclusters >> 4) << MCLSHIFT);

 if ((total_sbmb_cnt < mblim) &&
  (sb->sb_hiwat < sbspacelim)) {
  return(1);
 } else {
  OSIncrementAtomic64(&sbmb_limreached);
 }
 return(0);
}
