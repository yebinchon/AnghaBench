
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfstable {int vfc_name; } ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
is_bad_sysctl_name(struct vfstable *vfsp, int selector_name)
{
 switch(selector_name) {
  case 131:
  case 128:
  case 133:
  case 132:
  case 130:
  case 134:
  case 129:
   return 1;

  default:
   break;
 }


 if (strcmp(vfsp->vfc_name, "smbfs") == 0) {
  switch(selector_name) {
   case 136:
   case 135:
   case 137:
    return 1;
  }
 } else if (strcmp(vfsp->vfc_name, "afpfs") == 0) {
  switch(selector_name) {
   case 140:
   case 139:
   case 138:
    return 1;
  }
 }




 return 0;
}
