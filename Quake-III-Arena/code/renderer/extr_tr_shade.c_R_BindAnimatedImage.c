
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numImageAnimations; int imageAnimationSpeed; int * image; int videoMapHandle; scalar_t__ isVideoMap; } ;
typedef TYPE_1__ textureBundle_t ;
struct TYPE_7__ {int (* CIN_UploadCinematic ) (int ) ;int (* CIN_RunCinematic ) (int ) ;} ;
struct TYPE_6__ {int shaderTime; } ;


 int FUNCTABLE_SIZE ;
 int FUNCTABLE_SIZE2 ;
 int GL_Bind (int ) ;
 int myftol (int) ;
 TYPE_3__ ri ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 TYPE_2__ tess ;

__attribute__((used)) static void R_BindAnimatedImage( textureBundle_t *bundle ) {
 int index;

 if ( bundle->isVideoMap ) {
  ri.CIN_RunCinematic(bundle->videoMapHandle);
  ri.CIN_UploadCinematic(bundle->videoMapHandle);
  return;
 }

 if ( bundle->numImageAnimations <= 1 ) {
  GL_Bind( bundle->image[0] );
  return;
 }



 index = myftol( tess.shaderTime * bundle->imageAnimationSpeed * FUNCTABLE_SIZE );
 index >>= FUNCTABLE_SIZE2;

 if ( index < 0 ) {
  index = 0;
 }
 index %= bundle->numImageAnimations;

 GL_Bind( bundle->image[ index ] );
}
