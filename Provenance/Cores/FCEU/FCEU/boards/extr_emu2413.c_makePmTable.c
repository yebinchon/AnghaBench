
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;


 double PI ;
 scalar_t__ PM_AMP ;
 scalar_t__ PM_DEPTH ;
 size_t PM_PG_WIDTH ;
 size_t* pmtable ;
 double pow (int,double) ;
 double sin (double) ;

__attribute__((used)) static void makePmTable(void) {
 int32 i;

 for (i = 0; i < PM_PG_WIDTH; i++)
  pmtable[i] = (int32)((double)PM_AMP * pow(2, (double)PM_DEPTH * sin(2.0 * PI * i / PM_PG_WIDTH) / 1200));
}
