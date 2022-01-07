
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;
typedef int r1 ;


 scalar_t__ memcmp (double*,double*,int) ;

__attribute__((used)) static int sqlite3RealSameAsInt(double r1, sqlite3_int64 i){
  double r2 = (double)i;
  return memcmp(&r1, &r2, sizeof(r1))==0;
}
