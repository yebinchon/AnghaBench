
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fast_read (unsigned char const*,int) ;
 unsigned int fast_read_safe (unsigned char const*,int,unsigned char const*) ;
 size_t hash_func (unsigned int) ;
 int memcpy_up (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,unsigned char,unsigned int) ;

size_t qlz_decompress_core(const unsigned char *source, void *destination, size_t size, size_t source_size, unsigned char *first_valid, const unsigned char *hashtable[])
{
 const unsigned char *source_c = (const unsigned char*)source;
 unsigned char *destination_c = (unsigned char*)destination;
 const unsigned char *src = source_c;
 unsigned char *dst = destination_c;
 const unsigned char* last_byte_successor = destination_c + size;
 unsigned int cword_val = 1;
 const unsigned int bitlut[16] = {4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0};
 const unsigned char *guaranteed_uncompressed = last_byte_successor - 4;
 unsigned char *last_hashed = destination_c + 3;

 first_valid = first_valid;
 last_hashed = last_hashed;
 hashtable = hashtable;


 if (dst >= guaranteed_uncompressed)
 {
  src += 4;
  while(dst < last_byte_successor)
  {
   *dst = *src;
   dst++;
   src++;
  }

  return (unsigned int)(dst - destination_c);
 }


 for(;;)
 {
  unsigned int fetch;

  if (cword_val == 1)
  {

   cword_val = fast_read_safe(src, 4, source_c + source_size) | (1U << 31);
   src += 4;
  }

  fetch = fast_read_safe(src, 4, source_c + source_size);


  if ((cword_val & 1) == 1)
  {
   unsigned int matchlen;


   unsigned int hash;
   const unsigned char *offset2;

   cword_val = cword_val >> 1;

   if((fetch & 0xf) != 15)
   {
    hash = (fetch >> 4) & 0xfff;
    offset2 = hashtable[hash];

    if((fetch & 0xf) != 0)
    {
     matchlen = (fetch & 0xf);
     src += 2;
    }
    else if((fetch & 0x00ff0000) != 0)
    {
     matchlen = *(src + 2);
     src += 3;
    }
    else
    {
     matchlen = fast_read(src + 3, 4);
     src += 7;
    }
    memcpy_up(dst, offset2, matchlen);
    while(last_hashed < dst)
    {
     last_hashed++;
     hashtable[hash_func(fast_read(last_hashed, 4))] = last_hashed;
    }
    dst += matchlen;
    last_hashed = dst - 1;
   }
   else
   {

    unsigned char rle_char;
    rle_char = (unsigned char)(fetch >> 16);
    matchlen = ((fetch >> 4) & 0xfff);

    if(matchlen != 0)
     src += 3;
    else
    {
     matchlen = fast_read_safe(src + 3, 4, source_c + source_size);
     src += 7;
    }





    memset(dst, rle_char, matchlen);


    while(last_hashed < dst - 1)
    {
     last_hashed++;
     hashtable[hash_func(fast_read(last_hashed, 4))] = last_hashed;
    }
    last_hashed = dst - 1 + matchlen;

    dst += matchlen;
   }
  }
  else
  {





   memcpy_up(dst, src, 4);

   dst += bitlut[cword_val & 0xf];
   src += bitlut[cword_val & 0xf];
   cword_val = cword_val >> (bitlut[cword_val & 0xf]);


   while(last_hashed < dst - 3)
   {
    last_hashed++;
    hashtable[hash_func(fast_read(last_hashed, 4))] = last_hashed;
   }

   if (dst >= guaranteed_uncompressed)
   {

    while(dst < last_byte_successor)
    {
     if (cword_val == 1)
     {
      src += 4;
      cword_val = 1U << 31;
     }
     if (1 > destination_c + size - dst)
      return 0;

     *dst = *src;
     dst++;
     src++;
     cword_val = cword_val >> 1;
    }


    while(last_hashed < last_byte_successor - 4)
    {
     last_hashed++;
     hashtable[hash_func(fast_read(last_hashed, 4))] = last_hashed;
    }

    if((src - 1) - source_c > 8)
     return 0;
    else if(dst - destination_c - size == 0)
     return size;
    else
     return 0;
   }
  }
 }
}
