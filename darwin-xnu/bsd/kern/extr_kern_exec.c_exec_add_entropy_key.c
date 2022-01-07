
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct image_params {int dummy; } ;
typedef int str ;
typedef int entropy ;
typedef scalar_t__ boolean_t ;


 int CAST_USER_ADDR_T (char*) ;
 int FALSE ;
 int HEX_STR_LEN ;
 int UIO_SYSSPACE ;
 int exec_add_user_string (struct image_params*,int ,int ,int ) ;
 int read_random (int*,int) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static int
exec_add_entropy_key(struct image_params *imgp,
       const char *key,
       int values,
       boolean_t embedNUL)
{
 const int limit = 8;
 uint64_t entropy[limit];
 char str[strlen(key) + (HEX_STR_LEN + 1) * limit + 1];
 if (values > limit) {
  values = limit;
 }

    read_random(entropy, sizeof(entropy[0]) * values);

 if (embedNUL) {
  entropy[0] &= ~(0xffull << 8);
 }

 int len = snprintf(str, sizeof(str), "%s0x%llx", key, entropy[0]);
 int remaining = sizeof(str) - len;
 for (int i = 1; i < values && remaining > 0; ++i) {
  int start = sizeof(str) - remaining;
  len = snprintf(&str[start], remaining, ",0x%llx", entropy[i]);
  remaining -= len;
 }

 return exec_add_user_string(imgp, CAST_USER_ADDR_T(str), UIO_SYSSPACE, FALSE);
}
