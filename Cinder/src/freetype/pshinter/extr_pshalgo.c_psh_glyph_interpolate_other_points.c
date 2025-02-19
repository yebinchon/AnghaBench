
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int count; TYPE_2__* start; } ;
struct TYPE_11__ {scalar_t__ scale_mult; scalar_t__ scale_delta; } ;
struct TYPE_10__ {scalar_t__ num_contours; TYPE_5__* contours; TYPE_1__* globals; } ;
struct TYPE_9__ {scalar_t__ cur_u; scalar_t__ org_u; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_4__* dimension; } ;
typedef TYPE_2__* PSH_Point ;
typedef TYPE_3__* PSH_Glyph ;
typedef TYPE_4__* PSH_Dimension ;
typedef TYPE_5__* PSH_Contour ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Pos ;
typedef size_t FT_Int ;
typedef scalar_t__ FT_Fixed ;


 scalar_t__ FT_DivFix (scalar_t__,scalar_t__) ;
 scalar_t__ FT_MulFix (scalar_t__,scalar_t__) ;
 scalar_t__ psh_point_is_fitted (TYPE_2__*) ;

__attribute__((used)) static void
  psh_glyph_interpolate_other_points( PSH_Glyph glyph,
                                      FT_Int dimension )
  {
    PSH_Dimension dim = &glyph->globals->dimension[dimension];
    FT_Fixed scale = dim->scale_mult;
    FT_Fixed delta = dim->scale_delta;
    PSH_Contour contour = glyph->contours;
    FT_UInt num_contours = glyph->num_contours;


    for ( ; num_contours > 0; num_contours--, contour++ )
    {
      PSH_Point start = contour->start;
      PSH_Point first, next, point;
      FT_UInt fit_count;



      next = start + contour->count;
      fit_count = 0;
      first = ((void*)0);

      for ( point = start; point < next; point++ )
        if ( psh_point_is_fitted( point ) )
        {
          if ( !first )
            first = point;

          fit_count++;
        }



      if ( fit_count < 2 )
      {
        if ( fit_count == 1 )
          delta = first->cur_u - FT_MulFix( first->org_u, scale );

        for ( point = start; point < next; point++ )
          if ( point != first )
            point->cur_u = FT_MulFix( point->org_u, scale ) + delta;

        goto Next_Contour;
      }



      start = first;
      do
      {

        for (;;)
        {
          next = first->next;
          if ( next == start )
            goto Next_Contour;

          if ( !psh_point_is_fitted( next ) )
            break;

          first = next;
        }


        for (;;)
        {
          next = next->next;
          if ( psh_point_is_fitted( next ) )
            break;
        }


        {
          FT_Pos org_a, org_ab, cur_a, cur_ab;
          FT_Pos org_c, org_ac, cur_c;
          FT_Fixed scale_ab;


          if ( first->org_u <= next->org_u )
          {
            org_a = first->org_u;
            cur_a = first->cur_u;
            org_ab = next->org_u - org_a;
            cur_ab = next->cur_u - cur_a;
          }
          else
          {
            org_a = next->org_u;
            cur_a = next->cur_u;
            org_ab = first->org_u - org_a;
            cur_ab = first->cur_u - cur_a;
          }

          scale_ab = 0x10000L;
          if ( org_ab > 0 )
            scale_ab = FT_DivFix( cur_ab, org_ab );

          point = first->next;
          do
          {
            org_c = point->org_u;
            org_ac = org_c - org_a;

            if ( org_ac <= 0 )
            {

              cur_c = cur_a + FT_MulFix( org_ac, scale );
            }
            else if ( org_ac >= org_ab )
            {

              cur_c = cur_a + cur_ab + FT_MulFix( org_ac - org_ab, scale );
            }
            else
            {

              cur_c = cur_a + FT_MulFix( org_ac, scale_ab );
            }

            point->cur_u = cur_c;

            point = point->next;

          } while ( point != next );
        }


        first = next;

      } while ( first != start );

    Next_Contour:
      ;
    }
  }
