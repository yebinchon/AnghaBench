
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int aas_link_t ;


 int * AAS_AASLinkEntity (int ,int ,int) ;
 int AAS_PresenceTypeBoundingBox (int,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

aas_link_t *AAS_LinkEntityClientBBox(vec3_t absmins, vec3_t absmaxs, int entnum, int presencetype)
{
 vec3_t mins, maxs;
 vec3_t newabsmins, newabsmaxs;

 AAS_PresenceTypeBoundingBox(presencetype, mins, maxs);
 VectorSubtract(absmins, maxs, newabsmins);
 VectorSubtract(absmaxs, mins, newabsmaxs);

 return AAS_AASLinkEntity(newabsmins, newabsmaxs, entnum);
}
