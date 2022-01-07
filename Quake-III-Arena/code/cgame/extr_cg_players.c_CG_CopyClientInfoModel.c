
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sounds; int animations; int newAnims; int modelIcon; int headSkin; int headModel; int torsoSkin; int torsoModel; int legsSkin; int legsModel; int gender; int footsteps; int headOffset; } ;
typedef TYPE_1__ clientInfo_t ;


 int VectorCopy (int ,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void CG_CopyClientInfoModel( clientInfo_t *from, clientInfo_t *to ) {
 VectorCopy( from->headOffset, to->headOffset );
 to->footsteps = from->footsteps;
 to->gender = from->gender;

 to->legsModel = from->legsModel;
 to->legsSkin = from->legsSkin;
 to->torsoModel = from->torsoModel;
 to->torsoSkin = from->torsoSkin;
 to->headModel = from->headModel;
 to->headSkin = from->headSkin;
 to->modelIcon = from->modelIcon;

 to->newAnims = from->newAnims;

 memcpy( to->animations, from->animations, sizeof( to->animations ) );
 memcpy( to->sounds, from->sounds, sizeof( to->sounds ) );
}
