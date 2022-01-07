
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_22__ ;
typedef struct TYPE_42__ TYPE_1__ ;
typedef struct TYPE_41__ TYPE_15__ ;
typedef struct TYPE_40__ TYPE_12__ ;
typedef struct TYPE_39__ TYPE_10__ ;


struct TYPE_42__ {unsigned char* data; size_t size; } ;
typedef TYPE_1__ ucvector ;
struct TYPE_43__ {int windowsize; int btype; } ;
struct TYPE_46__ {TYPE_22__ zlibsettings; int text_compression; scalar_t__ add_id; scalar_t__ force_palette; int auto_convert; } ;
struct TYPE_40__ {scalar_t__ colortype; int palettesize; scalar_t__ key_defined; int palette; int bitdepth; } ;
struct TYPE_45__ {size_t text_num; char** text_keys; size_t itext_num; char** itext_keys; int * unknown_chunks_size; scalar_t__* unknown_chunks_data; int * itext_strings; int * itext_transkeys; int * itext_langtags; int * text_strings; int time; scalar_t__ time_defined; scalar_t__ phys_defined; scalar_t__ background_defined; TYPE_12__ color; int interlace_method; } ;
struct TYPE_41__ {scalar_t__ colortype; int bitdepth; } ;
struct TYPE_39__ {int interlace_method; } ;
struct TYPE_44__ {int error; TYPE_7__ encoder; TYPE_15__ info_raw; TYPE_10__ info_png; } ;
typedef TYPE_2__ LodePNGState ;
typedef TYPE_3__ LodePNGInfo ;


 int CERROR_RETURN_ERROR (int,int) ;
 int LAC_NO ;
 scalar_t__ LCT_GREY ;
 scalar_t__ LCT_PALETTE ;
 scalar_t__ LCT_RGB ;
 scalar_t__ LCT_RGBA ;
 int VERSION_STRING ;
 int addChunk_IDAT (TYPE_1__*,unsigned char*,size_t,TYPE_22__*) ;
 int addChunk_IEND (TYPE_1__*) ;
 int addChunk_IHDR (TYPE_1__*,unsigned int,unsigned int,scalar_t__,int ,int ) ;
 int addChunk_PLTE (TYPE_1__*,TYPE_12__*) ;
 int addChunk_bKGD (TYPE_1__*,TYPE_3__*) ;
 int addChunk_iTXt (TYPE_1__*,int ,char*,int ,int ,int ,TYPE_22__*) ;
 int addChunk_pHYs (TYPE_1__*,TYPE_3__*) ;
 int addChunk_tEXt (TYPE_1__*,char*,int ) ;
 int addChunk_tIME (TYPE_1__*,int *) ;
 int addChunk_tRNS (TYPE_1__*,TYPE_12__*) ;
 int addChunk_zTXt (TYPE_1__*,char*,int ,TYPE_22__*) ;
 void* addUnknownChunks (TYPE_1__*,scalar_t__,int ) ;
 void* checkColorValidity (scalar_t__,int ) ;
 scalar_t__ getPaletteTranslucency (int ,int) ;
 int lodepng_auto_choose_color (TYPE_12__*,unsigned char const*,unsigned int,unsigned int,TYPE_15__*,int ) ;
 int lodepng_color_mode_equal (TYPE_15__*,TYPE_12__*) ;
 int lodepng_convert (unsigned char*,unsigned char const*,TYPE_12__*,TYPE_15__*,unsigned int,unsigned int,int ) ;
 int lodepng_free (unsigned char*) ;
 unsigned int lodepng_get_bpp (TYPE_12__*) ;
 int lodepng_info_cleanup (TYPE_3__*) ;
 int lodepng_info_copy (TYPE_3__*,TYPE_10__*) ;
 int lodepng_info_init (TYPE_3__*) ;
 scalar_t__ lodepng_malloc (size_t) ;
 int preProcessScanlines (unsigned char**,size_t*,unsigned char const*,unsigned int,unsigned int,TYPE_3__*,TYPE_7__*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int ucvector_init (TYPE_1__*) ;
 int writeSignature (TYPE_1__*) ;

unsigned lodepng_encode(unsigned char** out, size_t* outsize,
                        const unsigned char* image, unsigned w, unsigned h,
                        LodePNGState* state)
{
  LodePNGInfo info;
  ucvector outv;
  unsigned char* data = 0;
  size_t datasize = 0;


  *out = 0;
  *outsize = 0;
  state->error = 0;

  lodepng_info_init(&info);
  lodepng_info_copy(&info, &state->info_png);

  if((info.color.colortype == LCT_PALETTE || state->encoder.force_palette)
      && (info.color.palettesize == 0 || info.color.palettesize > 256))
  {
    state->error = 68;
    return state->error;
  }

  if(state->encoder.auto_convert != LAC_NO)
  {
    state->error = lodepng_auto_choose_color(&info.color, image, w, h, &state->info_raw,
                                             state->encoder.auto_convert);
  }
  if(state->error) return state->error;

  if(state->encoder.zlibsettings.windowsize > 32768)
  {
    CERROR_RETURN_ERROR(state->error, 60);
  }
  if(state->encoder.zlibsettings.btype > 2)
  {
    CERROR_RETURN_ERROR(state->error, 61);
  }
  if(state->info_png.interlace_method > 1)
  {
    CERROR_RETURN_ERROR(state->error, 71);
  }

  state->error = checkColorValidity(info.color.colortype, info.color.bitdepth);
  if(state->error) return state->error;
  state->error = checkColorValidity(state->info_raw.colortype, state->info_raw.bitdepth);
  if(state->error) return state->error;

  if(!lodepng_color_mode_equal(&state->info_raw, &info.color))
  {
    unsigned char* converted;
    size_t size = (w * h * lodepng_get_bpp(&info.color) + 7) / 8;

    converted = (unsigned char*)lodepng_malloc(size);
    if(!converted && size) state->error = 83;
    if(!state->error)
    {
      state->error = lodepng_convert(converted, image, &info.color, &state->info_raw, w, h, 0 );
    }
    if(!state->error) preProcessScanlines(&data, &datasize, converted, w, h, &info, &state->encoder);
    lodepng_free(converted);
  }
  else preProcessScanlines(&data, &datasize, image, w, h, &info, &state->encoder);

  ucvector_init(&outv);
  while(!state->error)
  {




    writeSignature(&outv);

    addChunk_IHDR(&outv, w, h, info.color.colortype, info.color.bitdepth, info.interlace_method);
    if(info.color.colortype == LCT_PALETTE)
    {
      addChunk_PLTE(&outv, &info.color);
    }
    if(state->encoder.force_palette && (info.color.colortype == LCT_RGB || info.color.colortype == LCT_RGBA))
    {
      addChunk_PLTE(&outv, &info.color);
    }

    if(info.color.colortype == LCT_PALETTE && getPaletteTranslucency(info.color.palette, info.color.palettesize) != 0)
    {
      addChunk_tRNS(&outv, &info.color);
    }
    if((info.color.colortype == LCT_GREY || info.color.colortype == LCT_RGB) && info.color.key_defined)
    {
      addChunk_tRNS(&outv, &info.color);
    }
    state->error = addChunk_IDAT(&outv, data, datasize, &state->encoder.zlibsettings);
    if(state->error) break;
    addChunk_IEND(&outv);

    break;
  }

  lodepng_info_cleanup(&info);
  lodepng_free(data);

  *out = outv.data;
  *outsize = outv.size;

  return state->error;
}
