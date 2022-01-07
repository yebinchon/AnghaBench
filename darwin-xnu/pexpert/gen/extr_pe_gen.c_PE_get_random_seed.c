
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int DTEntry ;


 scalar_t__ DTGetProperty (int ,char*,void**,unsigned int*) ;
 scalar_t__ DTLookupEntry (int *,char*,int *) ;
 scalar_t__ kSuccess ;

uint32_t
PE_get_random_seed(unsigned char *dst_random_seed, uint32_t request_size)
{
 DTEntry entryP;
 uint32_t size = 0;
 void *dt_random_seed;

        if ((DTLookupEntry(((void*)0), "/chosen", &entryP) == kSuccess)
     && (DTGetProperty(entryP, "random-seed",
    (void **)&dt_random_seed, &size) == kSuccess)) {
  unsigned char *src_random_seed;
  unsigned int i;
  unsigned int null_count = 0;

  src_random_seed = (unsigned char *)dt_random_seed;

  if (size > request_size) size = request_size;





  for (i=0 ; i< size; i++, src_random_seed++, dst_random_seed++) {
   *dst_random_seed = *src_random_seed;
   null_count += *src_random_seed == (unsigned char)0;
   *src_random_seed = (unsigned char)0;
  }
  if (null_count == size)

   size = 0;
 }

 return(size);
}
