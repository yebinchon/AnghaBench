
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_CONT (unsigned char) ;
 int num_bytes_in_utf8_sequence (unsigned char) ;

__attribute__((used)) static int verify_utf8_sequence(unsigned char *string, int *len) {
 unsigned int cp = 0;
 *len = num_bytes_in_utf8_sequence(string[0]);

 if (*len == 1) {
  cp = string[0];
 }
 else if (*len == 2 && IS_CONT(string[1])) {
  cp = string[0] & 0x1F;
  cp = (cp << 6) | (string[1] & 0x3F);
 }
 else if (*len == 3 && IS_CONT(string[1]) && IS_CONT(string[2])) {
  cp = ((unsigned char)string[0]) & 0xF;
  cp = (cp << 6) | (string[1] & 0x3F);
  cp = (cp << 6) | (string[2] & 0x3F);
 }
 else if (*len == 4 && IS_CONT(string[1]) && IS_CONT(string[2]) && IS_CONT(string[3])) {
  cp = string[0] & 0x7;
  cp = (cp << 6) | (string[1] & 0x3F);
  cp = (cp << 6) | (string[2] & 0x3F);
  cp = (cp << 6) | (string[3] & 0x3F);
 }
 else {
  return 0;
 }


 if ((cp < 0x80 && *len > 1) ||
  (cp < 0x800 && *len > 2) ||
  (cp < 0x10000 && *len > 3)) {
   return 0;
 }


 if (cp > 0x10FFFF) {
  return 0;
 }


 if (cp >= 0xD800 && cp <= 0xDFFF) {
  return 0;
 }

 return 1;
}
