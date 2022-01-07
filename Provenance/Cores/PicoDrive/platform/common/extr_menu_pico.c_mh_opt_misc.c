
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBTN_RIGHT ;
 int PsndRate ;
 int region_prevnext (int) ;
 int sndrate_prevnext (int ,int) ;

__attribute__((used)) static int mh_opt_misc(int id, int keys)
{
 switch (id) {
 case 128:
  PsndRate = sndrate_prevnext(PsndRate, keys & PBTN_RIGHT);
  break;
 case 129:
  region_prevnext(keys & PBTN_RIGHT);
  break;
 default:
  break;
 }
 return 0;
}
