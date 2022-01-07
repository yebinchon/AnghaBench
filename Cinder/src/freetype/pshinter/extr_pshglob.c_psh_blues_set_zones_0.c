
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_1__* zones; } ;
struct TYPE_5__ {scalar_t__ org_ref; scalar_t__ org_delta; } ;
typedef int PSH_Blues ;
typedef TYPE_1__* PSH_Blue_Zone ;
typedef TYPE_2__* PSH_Blue_Table ;
typedef int FT_UInt ;
typedef scalar_t__ FT_Short ;
typedef scalar_t__ FT_Int ;
typedef int FT_Bool ;


 int FT_UNUSED (int ) ;

__attribute__((used)) static void
  psh_blues_set_zones_0( PSH_Blues target,
                         FT_Bool is_others,
                         FT_UInt read_count,
                         FT_Short* read,
                         PSH_Blue_Table top_table,
                         PSH_Blue_Table bot_table )
  {
    FT_UInt count_top = top_table->count;
    FT_UInt count_bot = bot_table->count;
    FT_Bool first = 1;

    FT_UNUSED( target );


    for ( ; read_count > 1; read_count -= 2 )
    {
      FT_Int reference, delta;
      FT_UInt count;
      PSH_Blue_Zone zones, zone;
      FT_Bool top;



      top = 0;
      if ( first || is_others )
      {
        reference = read[1];
        delta = read[0] - reference;

        zones = bot_table->zones;
        count = count_bot;
        first = 0;
      }
      else
      {
        reference = read[0];
        delta = read[1] - reference;

        zones = top_table->zones;
        count = count_top;
        top = 1;
      }


      zone = zones;
      for ( ; count > 0; count--, zone++ )
      {
        if ( reference < zone->org_ref )
          break;

        if ( reference == zone->org_ref )
        {
          FT_Int delta0 = zone->org_delta;




          if ( delta < 0 )
          {
            if ( delta < delta0 )
              zone->org_delta = delta;
          }
          else
          {
            if ( delta > delta0 )
              zone->org_delta = delta;
          }
          goto Skip;
        }
      }

      for ( ; count > 0; count-- )
        zone[count] = zone[count-1];

      zone->org_ref = reference;
      zone->org_delta = delta;

      if ( top )
        count_top++;
      else
        count_bot++;

    Skip:
      read += 2;
    }

    top_table->count = count_top;
    bot_table->count = count_bot;
  }
