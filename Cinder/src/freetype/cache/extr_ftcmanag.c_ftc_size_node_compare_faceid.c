
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ face_id; } ;
struct TYPE_4__ {TYPE_1__ scaler; } ;
typedef int FT_Pointer ;
typedef int FT_Bool ;
typedef TYPE_2__* FTC_SizeNode ;
typedef int FTC_MruNode ;
typedef scalar_t__ FTC_FaceID ;


 int FT_BOOL (int) ;

__attribute__((used)) static FT_Bool
  ftc_size_node_compare_faceid( FTC_MruNode ftcnode,
                                FT_Pointer ftcface_id )
  {
    FTC_SizeNode node = (FTC_SizeNode)ftcnode;
    FTC_FaceID face_id = (FTC_FaceID)ftcface_id;


    return FT_BOOL( node->scaler.face_id == face_id );
  }
