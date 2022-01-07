
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int skill_t ;


 int d_episode ;
 int d_map ;
 int d_skill ;
 int ga_newgame ;
 int gameaction ;

void
G_DeferedInitNew
( skill_t skill,
  int episode,
  int map)
{
    d_skill = skill;
    d_episode = episode;
    d_map = map;
    gameaction = ga_newgame;
}
