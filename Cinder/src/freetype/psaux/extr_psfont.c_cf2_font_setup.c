
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_11__ ;


struct TYPE_30__ {int a; int d; int b; int c; } ;
struct TYPE_35__ {int tx; int ty; } ;
struct TYPE_28__ {void* usedBV; int font; } ;
struct TYPE_36__ {scalar_t__ syntheticEmboldeningAmountX; scalar_t__ syntheticEmboldeningAmountY; scalar_t__ ppem; int hinted; int renderingFlags; int stemDarkened; int unitsPerEm; scalar_t__ stdVW; scalar_t__ stdHW; int blues; void* reverseWinding; void* darkened; int darkenY; int darkenX; int darkenParams; TYPE_3__ outerTransform; TYPE_8__ innerTransform; TYPE_8__ currentTransform; int * NDV; int lenNDV; int vsindex; TYPE_1__ blend; int error; int cffload; int isT1; TYPE_7__* lastSubfont; TYPE_4__* decoder; } ;
struct TYPE_29__ {int vsindex; } ;
struct TYPE_26__ {int font; } ;
struct TYPE_34__ {TYPE_2__ private_dict; TYPE_11__ blend; } ;
struct TYPE_33__ {scalar_t__ dataCount; } ;
struct TYPE_32__ {int (* load_private_dict ) (int ,TYPE_7__*,int ,int *) ;scalar_t__ (* blend_check_vector ) (TYPE_11__*,int ,int ,int *) ;} ;
struct TYPE_31__ {int cff; } ;
struct TYPE_27__ {int d; int a; } ;
typedef TYPE_4__ PS_Decoder ;
typedef TYPE_5__* FT_Service_CFFLoad ;
typedef int FT_Fixed ;
typedef int FT_Bool ;
typedef TYPE_6__ CFF_VStoreRec ;
typedef TYPE_7__* CFF_SubFont ;
typedef int CF2_UInt ;
typedef TYPE_8__ CF2_Matrix ;
typedef int CF2_Int ;
typedef TYPE_9__* CF2_Font ;
typedef scalar_t__ CF2_Fixed ;


 int CF2_FlagsDarkened ;
 int CF2_FlagsHinted ;
 void* FALSE ;
 void* FT_DivFix (int,scalar_t__) ;
 int FT_Err_Ok ;
 scalar_t__ FT_MAX (scalar_t__,void*) ;
 scalar_t__ MUL_INT32 (int,scalar_t__) ;
 void* TRUE ;
 int cf2_blues_init (int *,TYPE_9__*) ;
 int cf2_computeDarkening (scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,void*,int ) ;
 scalar_t__ cf2_fixedFracMul (int,int ) ;
 int cf2_getNormalizedVector (TYPE_4__*,int *,int **) ;
 scalar_t__ cf2_getPpemY (TYPE_4__*) ;
 scalar_t__ cf2_getStdHW (TYPE_4__*) ;
 scalar_t__ cf2_getStdVW (TYPE_4__*) ;
 TYPE_7__* cf2_getSubfont (TYPE_4__*) ;
 TYPE_6__* cf2_getVStore (TYPE_4__*) ;
 int cf2_intToFixed (int) ;
 TYPE_14__* fontMatrix ;
 scalar_t__ ft_memcmp (TYPE_8__ const*,TYPE_8__*,int) ;
 scalar_t__ stub1 (TYPE_11__*,int ,int ,int *) ;
 int stub2 (int ,TYPE_7__*,int ,int *) ;

__attribute__((used)) static void
  cf2_font_setup( CF2_Font font,
                  const CF2_Matrix* transform )
  {

    PS_Decoder* decoder = font->decoder;

    FT_Bool needExtraSetup = FALSE;

    CFF_VStoreRec* vstore;
    FT_Bool hasVariations = FALSE;


    CF2_Fixed boldenX = font->syntheticEmboldeningAmountX;
    CF2_Fixed boldenY = font->syntheticEmboldeningAmountY;

    CFF_SubFont subFont;
    CF2_Fixed ppem;

    CF2_UInt lenNormalizedV = 0;
    FT_Fixed* normalizedV = ((void*)0);


    font->error = FT_Err_Ok;



    subFont = cf2_getSubfont( decoder );
    if ( font->lastSubfont != subFont )
    {
      font->lastSubfont = subFont;
      needExtraSetup = TRUE;
    }

    if ( !font->isT1 )
    {
      FT_Service_CFFLoad cffload = (FT_Service_CFFLoad)font->cffload;



      vstore = cf2_getVStore( decoder );
      hasVariations = ( vstore->dataCount != 0 );

      if ( hasVariations )
      {
        font->blend.font = subFont->blend.font;


        font->blend.usedBV = FALSE;


        font->vsindex = subFont->private_dict.vsindex;


        font->lenNDV = lenNormalizedV;
        font->NDV = normalizedV;
      }
    }




    ppem = cf2_getPpemY( decoder );
    if ( font->ppem != ppem )
    {
      font->ppem = ppem;
      needExtraSetup = TRUE;
    }


    font->hinted = (FT_Bool)( font->renderingFlags & CF2_FlagsHinted );



    if ( ft_memcmp( transform,
                    &font->currentTransform,
                    4 * sizeof ( CF2_Fixed ) ) != 0 )
    {


      font->currentTransform = *transform;
      font->currentTransform.tx =
      font->currentTransform.ty = cf2_intToFixed( 0 );



      font->innerTransform = *transform;
      font->outerTransform.a =
      font->outerTransform.d = cf2_intToFixed( 1 );
      font->outerTransform.b =
      font->outerTransform.c = cf2_intToFixed( 0 );

      needExtraSetup = TRUE;
    }
    if ( font->stemDarkened != ( font->renderingFlags & CF2_FlagsDarkened ) )
    {
      font->stemDarkened =
        (FT_Bool)( font->renderingFlags & CF2_FlagsDarkened );


      needExtraSetup = TRUE;
    }



    if ( needExtraSetup )
    {
      CF2_Fixed emRatio;
      CF2_Fixed stdHW;
      CF2_Int unitsPerEm = font->unitsPerEm;


      if ( unitsPerEm == 0 )
        unitsPerEm = 1000;

      ppem = FT_MAX( cf2_intToFixed( 4 ),
                     font->ppem );
      emRatio = cf2_intToFixed( 1000 ) / unitsPerEm;
      font->stdVW = cf2_getStdVW( decoder );

      if ( font->stdVW <= 0 )
        font->stdVW = FT_DivFix( cf2_intToFixed( 75 ), emRatio );

      if ( boldenX > 0 )
      {


        boldenX = FT_MAX( boldenX,
                          FT_DivFix( cf2_intToFixed( unitsPerEm ), ppem ) );






        cf2_computeDarkening( emRatio,
                              ppem,
                              font->stdVW,
                              &font->darkenX,
                              boldenX,
                              FALSE,
                              font->darkenParams );
      }
      else
        cf2_computeDarkening( emRatio,
                              ppem,
                              font->stdVW,
                              &font->darkenX,
                              0,
                              font->stemDarkened,
                              font->darkenParams );
      stdHW = cf2_getStdHW( decoder );

      if ( stdHW > 0 && font->stdVW > MUL_INT32( 2, stdHW ) )
        font->stdHW = FT_DivFix( cf2_intToFixed( 75 ), emRatio );
      else
      {

        font->stdHW = FT_DivFix( cf2_intToFixed( 110 ), emRatio );
      }

      cf2_computeDarkening( emRatio,
                            ppem,
                            font->stdHW,
                            &font->darkenY,
                            boldenY,
                            font->stemDarkened,
                            font->darkenParams );

      if ( font->darkenX != 0 || font->darkenY != 0 )
        font->darkened = TRUE;
      else
        font->darkened = FALSE;

      font->reverseWinding = FALSE;


      cf2_blues_init( &font->blues, font );

    }
  }
