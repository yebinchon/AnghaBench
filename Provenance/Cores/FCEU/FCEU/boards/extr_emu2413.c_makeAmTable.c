
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;


 scalar_t__ AM_DEPTH ;
 size_t AM_PG_WIDTH ;
 double DB_STEP ;
 double PI ;
 double PM_PG_WIDTH ;
 size_t* amtable ;
 double sin (double) ;

__attribute__((used)) static void makeAmTable(void) {
 int32 i;

 for (i = 0; i < AM_PG_WIDTH; i++)
  amtable[i] = (int32)((double)AM_DEPTH / 2 / DB_STEP * (1.0 + sin(2.0 * PI * i / PM_PG_WIDTH)));
}
