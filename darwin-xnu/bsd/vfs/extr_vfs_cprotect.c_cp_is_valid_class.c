
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ PROTECTION_CLASS_A ;
 scalar_t__ PROTECTION_CLASS_D ;
 scalar_t__ PROTECTION_CLASS_DIR_NONE ;
 scalar_t__ PROTECTION_CLASS_F ;

int
cp_is_valid_class(int isdir, int32_t protectionclass)
{





 if (isdir) {

  return ((protectionclass >= PROTECTION_CLASS_DIR_NONE) &&
    (protectionclass <= PROTECTION_CLASS_D));
 }
 else {
  return ((protectionclass >= PROTECTION_CLASS_A) &&
    (protectionclass <= PROTECTION_CLASS_F));
 }
}
