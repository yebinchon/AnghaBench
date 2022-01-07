
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {size_t size; unsigned char* data; } ;
typedef TYPE_2__ ucvector ;
struct TYPE_20__ {int color; int * unknown_chunks_size; int * unknown_chunks_data; } ;
struct TYPE_17__ {int zlibsettings; int ignore_crc; scalar_t__ remember_unknown_chunks; scalar_t__ read_text_chunks; } ;
struct TYPE_19__ {int error; TYPE_8__ info_png; TYPE_1__ decoder; } ;
typedef TYPE_3__ LodePNGState ;


 int CERROR_BREAK (int,int) ;
 int lodepng_chunk_ancillary (unsigned char const*) ;
 int lodepng_chunk_append (int *,int *,unsigned char const*) ;
 scalar_t__ lodepng_chunk_check_crc (unsigned char const*) ;
 unsigned char* lodepng_chunk_data_const (unsigned char const*) ;
 unsigned int lodepng_chunk_length (unsigned char const*) ;
 unsigned char* lodepng_chunk_next_const (unsigned char const*) ;
 scalar_t__ lodepng_chunk_type_equals (unsigned char const*,char*) ;
 unsigned int lodepng_get_raw_size (unsigned int,unsigned int,int *) ;
 int lodepng_inspect (unsigned int*,unsigned int*,TYPE_3__*,unsigned char const*,size_t) ;
 int postProcessScanlines (unsigned char*,unsigned char*,unsigned int,unsigned int,TYPE_8__*) ;
 int readChunk_PLTE (int *,unsigned char const*,unsigned int) ;
 int readChunk_bKGD (TYPE_8__*,unsigned char const*,unsigned int) ;
 int readChunk_iTXt (TYPE_8__*,int *,unsigned char const*,unsigned int) ;
 int readChunk_pHYs (TYPE_8__*,unsigned char const*,unsigned int) ;
 int readChunk_tEXt (TYPE_8__*,unsigned char const*,unsigned int) ;
 int readChunk_tIME (TYPE_8__*,unsigned char const*,unsigned int) ;
 int readChunk_tRNS (int *,unsigned char const*,unsigned int) ;
 int readChunk_zTXt (TYPE_8__*,int *,unsigned char const*,unsigned int) ;
 int ucvector_cleanup (TYPE_2__*) ;
 int ucvector_init (TYPE_2__*) ;
 int ucvector_resize (TYPE_2__*,unsigned int) ;
 int ucvector_resizev (TYPE_2__*,unsigned int,int ) ;
 int zlib_decompress (unsigned char**,size_t*,unsigned char*,size_t,int *) ;

__attribute__((used)) static void decodeGeneric(unsigned char** out, unsigned* w, unsigned* h,
                          LodePNGState* state,
                          const unsigned char* in, size_t insize)
{
  unsigned char IEND = 0;
  const unsigned char* chunk;
  size_t i;
  ucvector idat;


  unsigned unknown = 0;





  *out = 0;

  state->error = lodepng_inspect(w, h, state, in, insize);
  if(state->error) return;

  ucvector_init(&idat);
  chunk = &in[33];



  while(!IEND && !state->error)
  {
    unsigned chunkLength;
    const unsigned char* data;


    if((size_t)((chunk - in) + 12) > insize || chunk < in) CERROR_BREAK(state->error, 30);


    chunkLength = lodepng_chunk_length(chunk);

    if(chunkLength > 2147483647) CERROR_BREAK(state->error, 63);

    if((size_t)((chunk - in) + chunkLength + 12) > insize || (chunk + chunkLength + 12) < in)
    {
      CERROR_BREAK(state->error, 64);
    }

    data = lodepng_chunk_data_const(chunk);


    if(lodepng_chunk_type_equals(chunk, "IDAT"))
    {
      size_t oldsize = idat.size;
      if(!ucvector_resize(&idat, oldsize + chunkLength)) CERROR_BREAK(state->error, 83 );
      for(i = 0; i < chunkLength; i++) idat.data[oldsize + i] = data[i];



    }

    else if(lodepng_chunk_type_equals(chunk, "IEND"))
    {
      IEND = 1;
    }

    else if(lodepng_chunk_type_equals(chunk, "PLTE"))
    {
      state->error = readChunk_PLTE(&state->info_png.color, data, chunkLength);
      if(state->error) break;



    }

    else if(lodepng_chunk_type_equals(chunk, "tRNS"))
    {
      state->error = readChunk_tRNS(&state->info_png.color, data, chunkLength);
      if(state->error) break;
    }
    else
    {

      if(!lodepng_chunk_ancillary(chunk)) CERROR_BREAK(state->error, 69);

      unknown = 1;
    }

    if(!state->decoder.ignore_crc && !unknown)
    {
      if(lodepng_chunk_check_crc(chunk)) CERROR_BREAK(state->error, 57);
    }

    if(!IEND) chunk = lodepng_chunk_next_const(chunk);
  }

  if(!state->error)
  {
    ucvector scanlines;
    ucvector_init(&scanlines);


    if(!ucvector_resize(&scanlines, lodepng_get_raw_size(*w, *h, &state->info_png.color) + *h))
    {
      state->error = 83;
    }
    if(!state->error)
    {

      state->error = zlib_decompress(&scanlines.data, &scanlines.size, idat.data,
                                     idat.size, &state->decoder.zlibsettings);
    }

    if(!state->error)
    {
      ucvector outv;
      ucvector_init(&outv);
      if(!ucvector_resizev(&outv,
          lodepng_get_raw_size(*w, *h, &state->info_png.color), 0)) state->error = 83;
      if(!state->error) state->error = postProcessScanlines(outv.data, scanlines.data, *w, *h, &state->info_png);
      *out = outv.data;
    }
    ucvector_cleanup(&scanlines);
  }

  ucvector_cleanup(&idat);
}
