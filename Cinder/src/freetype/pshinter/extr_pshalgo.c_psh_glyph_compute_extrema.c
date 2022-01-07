
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {size_t num_contours; size_t num_points; TYPE_2__* points; TYPE_1__* contours; } ;
struct TYPE_10__ {scalar_t__ org_u; scalar_t__ org_v; struct TYPE_10__* next; struct TYPE_10__* prev; } ;
struct TYPE_9__ {scalar_t__ count; TYPE_2__* start; } ;
typedef TYPE_2__* PSH_Point ;
typedef TYPE_3__* PSH_Glyph ;
typedef size_t FT_UInt ;


 scalar_t__ psh_point_is_extremum (TYPE_2__*) ;
 int psh_point_set_extremum (TYPE_2__*) ;
 int psh_point_set_negative (TYPE_2__*) ;
 int psh_point_set_positive (TYPE_2__*) ;

__attribute__((used)) static void
  psh_glyph_compute_extrema( PSH_Glyph glyph )
  {
    FT_UInt n;



    for ( n = 0; n < glyph->num_contours; n++ )
    {
      PSH_Point first = glyph->contours[n].start;
      PSH_Point point, before, after;


      if ( glyph->contours[n].count == 0 )
        continue;

      point = first;
      before = point;

      do
      {
        before = before->prev;
        if ( before == first )
          goto Skip;

      } while ( before->org_u == point->org_u );

      first = point = before->next;

      for (;;)
      {
        after = point;
        do
        {
          after = after->next;
          if ( after == first )
            goto Next;

        } while ( after->org_u == point->org_u );

        if ( before->org_u < point->org_u )
        {
          if ( after->org_u < point->org_u )
          {

            goto Extremum;
          }
        }
        else
        {
          if ( after->org_u > point->org_u )
          {

          Extremum:
            do
            {
              psh_point_set_extremum( point );
              point = point->next;

            } while ( point != after );
          }
        }

        before = after->prev;
        point = after;

      }

    Next:
      ;
    }



    for ( n = 0; n < glyph->num_points; n++ )
    {
      PSH_Point point, before, after;


      point = &glyph->points[n];
      before = point;
      after = point;

      if ( psh_point_is_extremum( point ) )
      {
        do
        {
          before = before->prev;
          if ( before == point )
            goto Skip;

        } while ( before->org_v == point->org_v );

        do
        {
          after = after->next;
          if ( after == point )
            goto Skip;

        } while ( after->org_v == point->org_v );
      }

      if ( before->org_v < point->org_v &&
           after->org_v > point->org_v )
      {
        psh_point_set_positive( point );
      }
      else if ( before->org_v > point->org_v &&
                after->org_v < point->org_v )
      {
        psh_point_set_negative( point );
      }

    Skip:
      ;
    }
  }
