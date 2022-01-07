
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;


 scalar_t__ DB_MUTE ;
 double DB_STEP ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;
 double log10 (double) ;

__attribute__((used)) static int32 lin2db(double d) {
 if (d == 0)
  return(DB_MUTE - 1);
 else
  return Min(-(int32)(20.0 * log10(d) / DB_STEP), DB_MUTE - 1);
}
