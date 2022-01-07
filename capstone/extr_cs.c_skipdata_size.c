
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int arch; int mode; } ;
typedef TYPE_1__ cs_struct ;
 int CS_MODE_THUMB ;

__attribute__((used)) static uint8_t skipdata_size(cs_struct *handle)
{
 switch(handle->arch) {
  default:

   return (uint8_t)-1;
  case 140:

   if (handle->mode & CS_MODE_THUMB)
    return 2;

   return 4;
  case 139:
  case 135:
  case 133:
  case 132:

   return 4;
  case 131:


   return 2;
  case 129:

   return 1;
  case 128:


   return 2;
  case 136:

   return 2;
  case 130:

   return 4;
  case 137:

   return 1;
  case 138:

   return 1;
  case 134:

   return 1;
 }
}
