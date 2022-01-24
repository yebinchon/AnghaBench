#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {size_t size; unsigned char* data; } ;
typedef  TYPE_2__ ucvector ;
struct TYPE_20__ {int /*<<< orphan*/  color; int /*<<< orphan*/ * unknown_chunks_size; int /*<<< orphan*/ * unknown_chunks_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  zlibsettings; int /*<<< orphan*/  ignore_crc; scalar_t__ remember_unknown_chunks; scalar_t__ read_text_chunks; } ;
struct TYPE_19__ {int error; TYPE_8__ info_png; TYPE_1__ decoder; } ;
typedef  TYPE_3__ LodePNGState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 unsigned char* FUNC4 (unsigned char const*) ; 
 unsigned int FUNC5 (unsigned char const*) ; 
 unsigned char* FUNC6 (unsigned char const*) ; 
 scalar_t__ FUNC7 (unsigned char const*,char*) ; 
 unsigned int FUNC8 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned int*,unsigned int*,TYPE_3__*,unsigned char const*,size_t) ; 
 int FUNC10 (unsigned char*,unsigned char*,unsigned int,unsigned int,TYPE_8__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int FUNC12 (TYPE_8__*,unsigned char const*,unsigned int) ; 
 int FUNC13 (TYPE_8__*,int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int FUNC14 (TYPE_8__*,unsigned char const*,unsigned int) ; 
 int FUNC15 (TYPE_8__*,unsigned char const*,unsigned int) ; 
 int FUNC16 (TYPE_8__*,unsigned char const*,unsigned int) ; 
 int FUNC17 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int FUNC18 (TYPE_8__*,int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC23 (unsigned char**,size_t*,unsigned char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(unsigned char** out, unsigned* w, unsigned* h,
                          LodePNGState* state,
                          const unsigned char* in, size_t insize)
{
  unsigned char IEND = 0;
  const unsigned char* chunk;
  size_t i;
  ucvector idat; /*the data from idat chunks*/

  /*for unknown chunk order*/
  unsigned unknown = 0;
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
  unsigned critical_pos = 1; /*1 = after IHDR, 2 = after PLTE, 3 = after IDAT*/
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/

  /*provide some proper output values if error will happen*/
  *out = 0;

  state->error = FUNC9(w, h, state, in, insize); /*reads header and resets other parameters in state->info_png*/
  if(state->error) return;

  FUNC20(&idat);
  chunk = &in[33]; /*first byte of the first chunk after the header*/

  /*loop through the chunks, ignoring unknown chunks and stopping at IEND chunk.
  IDAT data is put at the start of the in buffer*/
  while(!IEND && !state->error)
  {
    unsigned chunkLength;
    const unsigned char* data; /*the data in the chunk*/

    /*error: size of the in buffer too small to contain next chunk*/
    if((size_t)((chunk - in) + 12) > insize || chunk < in) FUNC0(state->error, 30);

    /*length of the data of the chunk, excluding the length bytes, chunk type and CRC bytes*/
    chunkLength = FUNC5(chunk);
    /*error: chunk length larger than the max PNG chunk size*/
    if(chunkLength > 2147483647) FUNC0(state->error, 63);

    if((size_t)((chunk - in) + chunkLength + 12) > insize || (chunk + chunkLength + 12) < in)
    {
      FUNC0(state->error, 64); /*error: size of the in buffer too small to contain next chunk*/
    }

    data = FUNC4(chunk);

    /*IDAT chunk, containing compressed image data*/
    if(FUNC7(chunk, "IDAT"))
    {
      size_t oldsize = idat.size;
      if(!FUNC21(&idat, oldsize + chunkLength)) FUNC0(state->error, 83 /*alloc fail*/);
      for(i = 0; i < chunkLength; i++) idat.data[oldsize + i] = data[i];
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
      critical_pos = 3;
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    }
    /*IEND chunk*/
    else if(FUNC7(chunk, "IEND"))
    {
      IEND = 1;
    }
    /*palette chunk (PLTE)*/
    else if(FUNC7(chunk, "PLTE"))
    {
      state->error = FUNC11(&state->info_png.color, data, chunkLength);
      if(state->error) break;
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
      critical_pos = 2;
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    }
    /*palette transparency chunk (tRNS)*/
    else if(FUNC7(chunk, "tRNS"))
    {
      state->error = FUNC17(&state->info_png.color, data, chunkLength);
      if(state->error) break;
    }
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
    /*background color chunk (bKGD)*/
    else if(lodepng_chunk_type_equals(chunk, "bKGD"))
    {
      state->error = readChunk_bKGD(&state->info_png, data, chunkLength);
      if(state->error) break;
    }
    /*text chunk (tEXt)*/
    else if(lodepng_chunk_type_equals(chunk, "tEXt"))
    {
      if(state->decoder.read_text_chunks)
      {
        state->error = readChunk_tEXt(&state->info_png, data, chunkLength);
        if(state->error) break;
      }
    }
    /*compressed text chunk (zTXt)*/
    else if(lodepng_chunk_type_equals(chunk, "zTXt"))
    {
      if(state->decoder.read_text_chunks)
      {
        state->error = readChunk_zTXt(&state->info_png, &state->decoder.zlibsettings, data, chunkLength);
        if(state->error) break;
      }
    }
    /*international text chunk (iTXt)*/
    else if(lodepng_chunk_type_equals(chunk, "iTXt"))
    {
      if(state->decoder.read_text_chunks)
      {
        state->error = readChunk_iTXt(&state->info_png, &state->decoder.zlibsettings, data, chunkLength);
        if(state->error) break;
      }
    }
    else if(lodepng_chunk_type_equals(chunk, "tIME"))
    {
      state->error = readChunk_tIME(&state->info_png, data, chunkLength);
      if(state->error) break;
    }
    else if(lodepng_chunk_type_equals(chunk, "pHYs"))
    {
      state->error = readChunk_pHYs(&state->info_png, data, chunkLength);
      if(state->error) break;
    }
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    else /*it's not an implemented chunk type, so ignore it: skip over the data*/
    {
      /*error: unknown critical chunk (5th bit of first byte of chunk type is 0)*/
      if(!FUNC1(chunk)) FUNC0(state->error, 69);

      unknown = 1;
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
      if(state->decoder.remember_unknown_chunks)
      {
        state->error = lodepng_chunk_append(&state->info_png.unknown_chunks_data[critical_pos - 1],
                                            &state->info_png.unknown_chunks_size[critical_pos - 1], chunk);
        if(state->error) break;
      }
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    }

    if(!state->decoder.ignore_crc && !unknown) /*check CRC if wanted, only on known chunk types*/
    {
      if(FUNC3(chunk)) FUNC0(state->error, 57); /*invalid CRC*/
    }

    if(!IEND) chunk = FUNC6(chunk);
  }

  if(!state->error)
  {
    ucvector scanlines;
    FUNC20(&scanlines);

    /*maximum final image length is already reserved in the vector's length - this is not really necessary*/
    if(!FUNC21(&scanlines, FUNC8(*w, *h, &state->info_png.color) + *h))
    {
      state->error = 83; /*alloc fail*/
    }
    if(!state->error)
    {
      /*decompress with the Zlib decompressor*/
      state->error = FUNC23(&scanlines.data, &scanlines.size, idat.data,
                                     idat.size, &state->decoder.zlibsettings);
    }

    if(!state->error)
    {
      ucvector outv;
      FUNC20(&outv);
      if(!FUNC22(&outv,
          FUNC8(*w, *h, &state->info_png.color), 0)) state->error = 83; /*alloc fail*/
      if(!state->error) state->error = FUNC10(outv.data, scanlines.data, *w, *h, &state->info_png);
      *out = outv.data;
    }
    FUNC19(&scanlines);
  }

  FUNC19(&idat);
}