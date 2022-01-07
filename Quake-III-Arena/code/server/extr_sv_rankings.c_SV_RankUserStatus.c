
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int grank_status_t ;
struct TYPE_4__ {int grank_status; } ;
struct TYPE_3__ {int value; } ;


 int GR_STATUS_ERROR ;
 int assert (int) ;
 TYPE_2__* s_ranked_players ;
 int s_rankings_active ;
 TYPE_1__* sv_maxclients ;

grank_status_t SV_RankUserStatus( int index )
{
 if( !s_rankings_active )
 {
  return GR_STATUS_ERROR;
 }

 assert( s_ranked_players != ((void*)0) );
 assert( index >= 0 );
 assert( index < sv_maxclients->value );

 return s_ranked_players[index].grank_status;
}
