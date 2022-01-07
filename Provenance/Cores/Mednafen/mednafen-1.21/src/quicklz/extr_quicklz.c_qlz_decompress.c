
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QLZ_STREAMING_MODE_ROUNDED ;
 int memcpy (void*,...) ;
 int qlz_decompress_core (unsigned char const*,unsigned char*,size_t,size_t,unsigned char*,unsigned char const**) ;
 size_t qlz_size_compressed (char*) ;
 size_t qlz_size_decompressed (char*) ;

size_t qlz_decompress(const char *source, void *destination, char *scratch)
{

 unsigned char *buffer_aligned = (unsigned char *)scratch + 8 - (((size_t)scratch) % 8);
 size_t *buffersize = (size_t *)buffer_aligned;
 unsigned int headerlen = 2*((((*source) & 2) == 2) ? 4 : 1) + 1;

 unsigned char *streambuffer = buffer_aligned + 8;
 const unsigned char **hashtable = (const unsigned char **)(streambuffer + QLZ_STREAMING_MODE_ROUNDED);

 size_t dsiz = qlz_size_decompressed((char *)source);
 size_t csiz = qlz_size_compressed((char *)source);
 if (*buffersize + qlz_size_decompressed((char *)source) - 1 >= QLZ_STREAMING_MODE_ROUNDED)
 {
  if((*source & 1) == 1)
   qlz_decompress_core((const unsigned char *)source + headerlen, destination, dsiz, csiz, (unsigned char*)destination, hashtable);
  else
   memcpy(destination, source + headerlen, dsiz);
  *buffersize = 0;
 }
 else
 {
  if((*source & 1) == 1)
   qlz_decompress_core((const unsigned char *)source + headerlen, streambuffer + *buffersize, dsiz, csiz, streambuffer, hashtable);
  else
   memcpy(streambuffer + *buffersize, source + headerlen, dsiz);
  memcpy(destination, streambuffer + *buffersize, dsiz);
  *buffersize += dsiz;
 }
 return dsiz;
}
