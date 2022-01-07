
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef scalar_t__ int16 ;


 int DB2LIN_AMP_BITS ;
 scalar_t__* DB2LIN_TABLE ;
 size_t DB_MUTE ;
 double DB_STEP ;
 double pow (int,double) ;

__attribute__((used)) static void makeDB2LinTable(void) {
 int32 i;

 for (i = 0; i < DB_MUTE + DB_MUTE; i++) {
  DB2LIN_TABLE[i] = (int16)((double)((1 << DB2LIN_AMP_BITS) - 1) * pow(10, -(double)i * DB_STEP / 20));
  if (i >= DB_MUTE) DB2LIN_TABLE[i] = 0;
  DB2LIN_TABLE[i + DB_MUTE + DB_MUTE] = (int16)(-DB2LIN_TABLE[i]);
 }
}
