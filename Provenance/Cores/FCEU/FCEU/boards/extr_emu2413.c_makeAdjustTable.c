
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int int32 ;


 int* AR_ADJUST_TABLE ;
 int EG_BITS ;
 int log (int) ;

__attribute__((used)) static void makeAdjustTable(void) {
 int32 i;

 AR_ADJUST_TABLE[0] = (1 << EG_BITS);
 for (i = 1; i < 128; i++)
  AR_ADJUST_TABLE[i] = (uint16)((double)(1 << EG_BITS) - 1 - (1 << EG_BITS) * log(i) / log(128));
}
