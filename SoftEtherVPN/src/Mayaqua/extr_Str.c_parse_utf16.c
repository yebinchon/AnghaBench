
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp ;


 int JSON_RET_ERROR ;
 int JSON_RET_OK ;
 int parse_utf16_hex (char*,unsigned int*) ;

__attribute__((used)) static int parse_utf16(char **unprocessed, char **processed) {
 unsigned int cp, lead, trail;
 int parse_succeeded = 0;
 char *processed_ptr = *processed;
 char *unprocessed_ptr = *unprocessed;
 unprocessed_ptr++;
 parse_succeeded = parse_utf16_hex(unprocessed_ptr, &cp);
 if (!parse_succeeded) {
  return JSON_RET_ERROR;
 }
 if (cp < 0x80) {
  processed_ptr[0] = (char)cp;
 }
 else if (cp < 0x800) {
  processed_ptr[0] = ((cp >> 6) & 0x1F) | 0xC0;
  processed_ptr[1] = ((cp) & 0x3F) | 0x80;
  processed_ptr += 1;
 }
 else if (cp < 0xD800 || cp > 0xDFFF) {
  processed_ptr[0] = ((cp >> 12) & 0x0F) | 0xE0;
  processed_ptr[1] = ((cp >> 6) & 0x3F) | 0x80;
  processed_ptr[2] = ((cp) & 0x3F) | 0x80;
  processed_ptr += 2;
 }
 else if (cp >= 0xD800 && cp <= 0xDBFF) {
  lead = cp;
  unprocessed_ptr += 4;
  if (*unprocessed_ptr++ != '\\' || *unprocessed_ptr++ != 'u') {
   return JSON_RET_ERROR;
  }
  parse_succeeded = parse_utf16_hex(unprocessed_ptr, &trail);
  if (!parse_succeeded || trail < 0xDC00 || trail > 0xDFFF) {
   return JSON_RET_ERROR;
  }
  cp = ((((lead - 0xD800) & 0x3FF) << 10) | ((trail - 0xDC00) & 0x3FF)) + 0x010000;
  processed_ptr[0] = (((cp >> 18) & 0x07) | 0xF0);
  processed_ptr[1] = (((cp >> 12) & 0x3F) | 0x80);
  processed_ptr[2] = (((cp >> 6) & 0x3F) | 0x80);
  processed_ptr[3] = (((cp) & 0x3F) | 0x80);
  processed_ptr += 3;
 }
 else {
  return JSON_RET_ERROR;
 }
 unprocessed_ptr += 3;
 *processed = processed_ptr;
 *unprocessed = unprocessed_ptr;
 return JSON_RET_OK;
}
