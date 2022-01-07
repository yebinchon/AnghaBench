
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lodepng_chunk_generate_crc (unsigned char*) ;
 scalar_t__ lodepng_realloc (unsigned char*,size_t) ;
 int lodepng_set32bitInt (unsigned char*,unsigned int) ;

unsigned lodepng_chunk_create(unsigned char** out, size_t* outlength, unsigned length,
                              const char* type, const unsigned char* data)
{
  unsigned i;
  unsigned char *chunk, *new_buffer;
  size_t new_length = (*outlength) + length + 12;
  if(new_length < length + 12 || new_length < (*outlength)) return 77;
  new_buffer = (unsigned char*)lodepng_realloc(*out, new_length);
  if(!new_buffer) return 83;
  (*out) = new_buffer;
  (*outlength) = new_length;
  chunk = &(*out)[(*outlength) - length - 12];


  lodepng_set32bitInt(chunk, (unsigned)length);


  chunk[4] = type[0];
  chunk[5] = type[1];
  chunk[6] = type[2];
  chunk[7] = type[3];


  for(i = 0; i < length; i++) chunk[8 + i] = data[i];


  lodepng_chunk_generate_crc(chunk);

  return 0;
}
