
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CARDIO_ERROR_NOCARD ;
 scalar_t__ sdgecko_readStatus (int) ;

__attribute__((used)) static bool __gcsd_isInserted(int n)
{
 if(sdgecko_readStatus(n) == CARDIO_ERROR_NOCARD)
  return 0;
 return 1;
}
