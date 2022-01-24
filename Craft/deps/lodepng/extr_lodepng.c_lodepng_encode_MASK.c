#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_7__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_22__ ;
typedef  struct TYPE_42__   TYPE_1__ ;
typedef  struct TYPE_41__   TYPE_15__ ;
typedef  struct TYPE_40__   TYPE_12__ ;
typedef  struct TYPE_39__   TYPE_10__ ;

/* Type definitions */
struct TYPE_42__ {unsigned char* data; size_t size; } ;
typedef  TYPE_1__ ucvector ;
struct TYPE_43__ {int windowsize; int btype; } ;
struct TYPE_46__ {TYPE_22__ zlibsettings; int /*<<< orphan*/  text_compression; scalar_t__ add_id; scalar_t__ force_palette; int /*<<< orphan*/  auto_convert; } ;
struct TYPE_40__ {scalar_t__ colortype; int palettesize; scalar_t__ key_defined; int /*<<< orphan*/  palette; int /*<<< orphan*/  bitdepth; } ;
struct TYPE_45__ {size_t text_num; char** text_keys; size_t itext_num; char** itext_keys; int /*<<< orphan*/ * unknown_chunks_size; scalar_t__* unknown_chunks_data; int /*<<< orphan*/ * itext_strings; int /*<<< orphan*/ * itext_transkeys; int /*<<< orphan*/ * itext_langtags; int /*<<< orphan*/ * text_strings; int /*<<< orphan*/  time; scalar_t__ time_defined; scalar_t__ phys_defined; scalar_t__ background_defined; TYPE_12__ color; int /*<<< orphan*/  interlace_method; } ;
struct TYPE_41__ {scalar_t__ colortype; int /*<<< orphan*/  bitdepth; } ;
struct TYPE_39__ {int interlace_method; } ;
struct TYPE_44__ {int error; TYPE_7__ encoder; TYPE_15__ info_raw; TYPE_10__ info_png; } ;
typedef  TYPE_2__ LodePNGState ;
typedef  TYPE_3__ LodePNGInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  LAC_NO ; 
 scalar_t__ LCT_GREY ; 
 scalar_t__ LCT_PALETTE ; 
 scalar_t__ LCT_RGB ; 
 scalar_t__ LCT_RGBA ; 
 int /*<<< orphan*/  VERSION_STRING ; 
 int FUNC1 (TYPE_1__*,unsigned char*,size_t,TYPE_22__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int,unsigned int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_22__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_22__*) ; 
 void* FUNC12 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (TYPE_12__*,unsigned char const*,unsigned int,unsigned int,TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_15__*,TYPE_12__*) ; 
 int FUNC17 (unsigned char*,unsigned char const*,TYPE_12__*,TYPE_15__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*) ; 
 unsigned int FUNC19 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 scalar_t__ FUNC23 (size_t) ; 
 int /*<<< orphan*/  FUNC24 (unsigned char**,size_t*,unsigned char const*,unsigned int,unsigned int,TYPE_3__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 

unsigned FUNC29(unsigned char** out, size_t* outsize,
                        const unsigned char* image, unsigned w, unsigned h,
                        LodePNGState* state)
{
  LodePNGInfo info;
  ucvector outv;
  unsigned char* data = 0; /*uncompressed version of the IDAT chunk data*/
  size_t datasize = 0;

  /*provide some proper output values if error will happen*/
  *out = 0;
  *outsize = 0;
  state->error = 0;

  FUNC22(&info);
  FUNC21(&info, &state->info_png);

  if((info.color.colortype == LCT_PALETTE || state->encoder.force_palette)
      && (info.color.palettesize == 0 || info.color.palettesize > 256))
  {
    state->error = 68; /*invalid palette size, it is only allowed to be 1-256*/
    return state->error;
  }

  if(state->encoder.auto_convert != LAC_NO)
  {
    state->error = FUNC15(&info.color, image, w, h, &state->info_raw,
                                             state->encoder.auto_convert);
  }
  if(state->error) return state->error;

  if(state->encoder.zlibsettings.windowsize > 32768)
  {
    FUNC0(state->error, 60); /*error: windowsize larger than allowed*/
  }
  if(state->encoder.zlibsettings.btype > 2)
  {
    FUNC0(state->error, 61); /*error: unexisting btype*/
  }
  if(state->info_png.interlace_method > 1)
  {
    FUNC0(state->error, 71); /*error: unexisting interlace mode*/
  }

  state->error = FUNC13(info.color.colortype, info.color.bitdepth);
  if(state->error) return state->error; /*error: unexisting color type given*/
  state->error = FUNC13(state->info_raw.colortype, state->info_raw.bitdepth);
  if(state->error) return state->error; /*error: unexisting color type given*/

  if(!FUNC16(&state->info_raw, &info.color))
  {
    unsigned char* converted;
    size_t size = (w * h * FUNC19(&info.color) + 7) / 8;

    converted = (unsigned char*)FUNC23(size);
    if(!converted && size) state->error = 83; /*alloc fail*/
    if(!state->error)
    {
      state->error = FUNC17(converted, image, &info.color, &state->info_raw, w, h, 0 /*fix_png*/);
    }
    if(!state->error) FUNC24(&data, &datasize, converted, w, h, &info, &state->encoder);
    FUNC18(converted);
  }
  else FUNC24(&data, &datasize, image, w, h, &info, &state->encoder);

  FUNC27(&outv);
  while(!state->error) /*while only executed once, to break on error*/
  {
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
    size_t i;
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    /*write signature and chunks*/
    FUNC28(&outv);
    /*IHDR*/
    FUNC3(&outv, w, h, info.color.colortype, info.color.bitdepth, info.interlace_method);
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
    /*unknown chunks between IHDR and PLTE*/
    if(info.unknown_chunks_data[0])
    {
      state->error = addUnknownChunks(&outv, info.unknown_chunks_data[0], info.unknown_chunks_size[0]);
      if(state->error) break;
    }
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    /*PLTE*/
    if(info.color.colortype == LCT_PALETTE)
    {
      FUNC4(&outv, &info.color);
    }
    if(state->encoder.force_palette && (info.color.colortype == LCT_RGB || info.color.colortype == LCT_RGBA))
    {
      FUNC4(&outv, &info.color);
    }
    /*tRNS*/
    if(info.color.colortype == LCT_PALETTE && FUNC14(info.color.palette, info.color.palettesize) != 0)
    {
      FUNC10(&outv, &info.color);
    }
    if((info.color.colortype == LCT_GREY || info.color.colortype == LCT_RGB) && info.color.key_defined)
    {
      FUNC10(&outv, &info.color);
    }
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
    /*bKGD (must come between PLTE and the IDAt chunks*/
    if(info.background_defined) addChunk_bKGD(&outv, &info);
    /*pHYs (must come before the IDAT chunks)*/
    if(info.phys_defined) addChunk_pHYs(&outv, &info);

    /*unknown chunks between PLTE and IDAT*/
    if(info.unknown_chunks_data[1])
    {
      state->error = addUnknownChunks(&outv, info.unknown_chunks_data[1], info.unknown_chunks_size[1]);
      if(state->error) break;
    }
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    /*IDAT (multiple IDAT chunks must be consecutive)*/
    state->error = FUNC1(&outv, data, datasize, &state->encoder.zlibsettings);
    if(state->error) break;
#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
    /*tIME*/
    if(info.time_defined) addChunk_tIME(&outv, &info.time);
    /*tEXt and/or zTXt*/
    for(i = 0; i < info.text_num; i++)
    {
      if(strlen(info.text_keys[i]) > 79)
      {
        state->error = 66; /*text chunk too large*/
        break;
      }
      if(strlen(info.text_keys[i]) < 1)
      {
        state->error = 67; /*text chunk too small*/
        break;
      }
      if(state->encoder.text_compression)
        addChunk_zTXt(&outv, info.text_keys[i], info.text_strings[i], &state->encoder.zlibsettings);
      else
        addChunk_tEXt(&outv, info.text_keys[i], info.text_strings[i]);
    }
    /*LodePNG version id in text chunk*/
    if(state->encoder.add_id)
    {
      unsigned alread_added_id_text = 0;
      for(i = 0; i < info.text_num; i++)
      {
        if(!strcmp(info.text_keys[i], "LodePNG"))
        {
          alread_added_id_text = 1;
          break;
        }
      }
      if(alread_added_id_text == 0)
        addChunk_tEXt(&outv, "LodePNG", VERSION_STRING); /*it's shorter as tEXt than as zTXt chunk*/
    }
    /*iTXt*/
    for(i = 0; i < info.itext_num; i++)
    {
      if(strlen(info.itext_keys[i]) > 79)
      {
        state->error = 66; /*text chunk too large*/
        break;
      }
      if(strlen(info.itext_keys[i]) < 1)
      {
        state->error = 67; /*text chunk too small*/
        break;
      }
      addChunk_iTXt(&outv, state->encoder.text_compression,
                    info.itext_keys[i], info.itext_langtags[i], info.itext_transkeys[i], info.itext_strings[i],
                    &state->encoder.zlibsettings);
    }

    /*unknown chunks between IDAT and IEND*/
    if(info.unknown_chunks_data[2])
    {
      state->error = addUnknownChunks(&outv, info.unknown_chunks_data[2], info.unknown_chunks_size[2]);
      if(state->error) break;
    }
#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
    /*IEND*/
    FUNC2(&outv);

    break; /*this isn't really a while loop; no error happened so break out now!*/
  }

  FUNC20(&info);
  FUNC18(data);
  /*instead of cleaning the vector up, give it to the output*/
  *out = outv.data;
  *outsize = outv.size;

  return state->error;
}