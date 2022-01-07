
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rdseed_retry (int *,int) ;

__attribute__((used)) static size_t
rdseed_seed(void * buf, size_t nwords)
{
 uint64_t * buf_words;
 size_t i;

 if (nwords > 8) {
  nwords = 8;
 }

 buf_words = buf;
 for (i = 0; i < nwords; i += 1) {
  if (!rdseed_retry(buf_words + i, 10)) {
   return i;
  }
 }

 return nwords;
}
