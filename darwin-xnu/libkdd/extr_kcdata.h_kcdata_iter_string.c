
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int kcdata_iter_t ;


 scalar_t__ kcdata_iter_payload (int ) ;
 scalar_t__ kcdata_iter_size (int ) ;
 scalar_t__ strnlen (char*,scalar_t__) ;

__attribute__((used)) static inline
char *kcdata_iter_string(kcdata_iter_t iter, uint32_t offset) {
 if (offset > kcdata_iter_size(iter)) {
  return ((void*)0);
 }
 uint32_t maxlen = kcdata_iter_size(iter) - offset;
 char *s = ((char*)kcdata_iter_payload(iter)) + offset;
 if (strnlen(s, maxlen) < maxlen) {
  return s;
 } else {
  return ((void*)0);
 }
}
