
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int grank; } ;
struct TYPE_3__ {int value; } ;


 int assert (int) ;
 TYPE_2__* s_ranked_players ;
 int s_rankings_active ;
 TYPE_1__* sv_maxclients ;

int SV_RankUserGrank( int index )
{
 if( !s_rankings_active )
 {
  return 0;
 }

 assert( s_ranked_players != ((void*)0) );
 assert( index >= 0 );
 assert( index < sv_maxclients->value );

 return s_ranked_players[index].grank;
}
