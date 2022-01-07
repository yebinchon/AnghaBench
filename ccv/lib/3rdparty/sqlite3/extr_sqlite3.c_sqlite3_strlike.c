
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int likeInfoNorm ;
 int patternCompare (int *,int *,int *,unsigned int) ;

int sqlite3_strlike(const char *zPattern, const char *zStr, unsigned int esc){
  return patternCompare((u8*)zPattern, (u8*)zStr, &likeInfoNorm, esc);
}
