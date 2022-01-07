
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int darkenY; } ;
struct TYPE_10__ {scalar_t__ flags; size_t index; void* csCoord; int dsCoord; scalar_t__ scale; } ;
struct TYPE_9__ {int minDS; int maxDS; scalar_t__ used; void* max; void* min; } ;
typedef scalar_t__ FT_Bool ;
typedef TYPE_1__ CF2_StemHintRec ;
typedef TYPE_2__* CF2_Hint ;
typedef TYPE_3__* CF2_Font ;
typedef scalar_t__ CF2_Fixed ;
typedef int CF2_ArrStack ;


 void* ADD_INT32 (void*,scalar_t__) ;
 scalar_t__ CF2_GhostBottom ;
 scalar_t__ CF2_GhostTop ;
 void* CF2_PairBottom ;
 void* CF2_PairTop ;
 int FT_MulFix (void*,scalar_t__) ;
 int FT_ZERO (TYPE_2__*) ;
 scalar_t__ SUB_INT32 (void*,void*) ;
 scalar_t__ cf2_arrstack_getPointer (int const,size_t) ;
 scalar_t__ cf2_hint_isTop (TYPE_2__*) ;
 int cf2_hint_lock (TYPE_2__*) ;
 scalar_t__ cf2_intToFixed (int) ;

__attribute__((used)) static void
  cf2_hint_init( CF2_Hint hint,
                 const CF2_ArrStack stemHintArray,
                 size_t indexStemHint,
                 const CF2_Font font,
                 CF2_Fixed hintOrigin,
                 CF2_Fixed scale,
                 FT_Bool bottom )
  {
    CF2_Fixed width;
    const CF2_StemHintRec* stemHint;


    FT_ZERO( hint );

    stemHint = (const CF2_StemHintRec*)cf2_arrstack_getPointer(
                                         stemHintArray,
                                         indexStemHint );

    width = SUB_INT32( stemHint->max, stemHint->min );

    if ( width == cf2_intToFixed( -21 ) )
    {


      if ( bottom )
      {
        hint->csCoord = stemHint->max;
        hint->flags = CF2_GhostBottom;
      }
      else
        hint->flags = 0;
    }

    else if ( width == cf2_intToFixed( -20 ) )
    {


      if ( bottom )
        hint->flags = 0;
      else
      {
        hint->csCoord = stemHint->min;
        hint->flags = CF2_GhostTop;
      }
    }

    else if ( width < 0 )
    {
      if ( bottom )
      {
        hint->csCoord = stemHint->max;
        hint->flags = CF2_PairBottom;
      }
      else
      {
        hint->csCoord = stemHint->min;
        hint->flags = CF2_PairTop;
      }
    }

    else
    {


      if ( bottom )
      {
        hint->csCoord = stemHint->min;
        hint->flags = CF2_PairBottom;
      }
      else
      {
        hint->csCoord = stemHint->max;
        hint->flags = CF2_PairTop;
      }
    }




    if ( cf2_hint_isTop( hint ) )
      hint->csCoord = ADD_INT32( hint->csCoord, 2 * font->darkenY );

    hint->csCoord = ADD_INT32( hint->csCoord, hintOrigin );
    hint->scale = scale;
    hint->index = indexStemHint;


    if ( hint->flags != 0 && stemHint->used )
    {
      if ( cf2_hint_isTop( hint ) )
        hint->dsCoord = stemHint->maxDS;
      else
        hint->dsCoord = stemHint->minDS;

      cf2_hint_lock( hint );
    }
    else
      hint->dsCoord = FT_MulFix( hint->csCoord, scale );
  }
