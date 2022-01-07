
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cgameUserCmdValue; float cgameSensitivity; } ;


 TYPE_1__ cl ;

void CL_SetUserCmdValue( int userCmdValue, float sensitivityScale ) {
 cl.cgameUserCmdValue = userCmdValue;
 cl.cgameSensitivity = sensitivityScale;
}
