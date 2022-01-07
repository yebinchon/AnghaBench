
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t MT_INITIAL_VALUE ;
 int bzero (size_t*,size_t) ;

__attribute__((used)) static void
mt_reset(uint32_t in_words, size_t total_size, uint32_t *data)
{
 uint32_t i;

 for (i = 0; i < in_words; i++) {
  data[i] = MT_INITIAL_VALUE;
 }

 if (in_words * sizeof(uint32_t) < total_size) {
  bzero(&data[in_words], total_size - in_words * sizeof(uint32_t));
 }
}
