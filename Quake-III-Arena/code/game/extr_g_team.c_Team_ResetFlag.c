
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ gentity_t ;


 int FLAG_ATBASE ;
 int FL_DROPPED_ITEM ;
 int FOFS (int ) ;
 TYPE_1__* G_Find (TYPE_1__*,int ,char*) ;
 int G_FreeEntity (TYPE_1__*) ;
 int RespawnItem (TYPE_1__*) ;



 int Team_SetFlagStatus (int,int ) ;
 int classname ;

gentity_t *Team_ResetFlag( int team ) {
 char *c;
 gentity_t *ent, *rent = ((void*)0);

 switch (team) {
 case 128:
  c = "team_CTF_redflag";
  break;
 case 130:
  c = "team_CTF_blueflag";
  break;
 case 129:
  c = "team_CTF_neutralflag";
  break;
 default:
  return ((void*)0);
 }

 ent = ((void*)0);
 while ((ent = G_Find (ent, FOFS(classname), c)) != ((void*)0)) {
  if (ent->flags & FL_DROPPED_ITEM)
   G_FreeEntity(ent);
  else {
   rent = ent;
   RespawnItem(ent);
  }
 }

 Team_SetFlagStatus( team, FLAG_ATBASE );

 return rent;
}
