
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__byte ;


 int FLAC__ASSERT (int) ;

__attribute__((used)) static unsigned utf8len_(const FLAC__byte *utf8)
{
 FLAC__ASSERT(0 != utf8);
 if ((utf8[0] & 0x80) == 0) {
  return 1;
 }
 else if ((utf8[0] & 0xE0) == 0xC0 && (utf8[1] & 0xC0) == 0x80) {
  if ((utf8[0] & 0xFE) == 0xC0)
   return 0;
  return 2;
 }
 else if ((utf8[0] & 0xF0) == 0xE0 && (utf8[1] & 0xC0) == 0x80 && (utf8[2] & 0xC0) == 0x80) {
  if (utf8[0] == 0xE0 && (utf8[1] & 0xE0) == 0x80)
   return 0;

  if (utf8[0] == 0xED && (utf8[1] & 0xE0) == 0xA0)
   return 0;
  if (utf8[0] == 0xEF && utf8[1] == 0xBF && (utf8[2] & 0xFE) == 0xBE)
   return 0;
  return 3;
 }
 else if ((utf8[0] & 0xF8) == 0xF0 && (utf8[1] & 0xC0) == 0x80 && (utf8[2] & 0xC0) == 0x80 && (utf8[3] & 0xC0) == 0x80) {
  if (utf8[0] == 0xF0 && (utf8[1] & 0xF0) == 0x80)
   return 0;
  return 4;
 }
 else if ((utf8[0] & 0xFC) == 0xF8 && (utf8[1] & 0xC0) == 0x80 && (utf8[2] & 0xC0) == 0x80 && (utf8[3] & 0xC0) == 0x80 && (utf8[4] & 0xC0) == 0x80) {
  if (utf8[0] == 0xF8 && (utf8[1] & 0xF8) == 0x80)
   return 0;
  return 5;
 }
 else if ((utf8[0] & 0xFE) == 0xFC && (utf8[1] & 0xC0) == 0x80 && (utf8[2] & 0xC0) == 0x80 && (utf8[3] & 0xC0) == 0x80 && (utf8[4] & 0xC0) == 0x80 && (utf8[5] & 0xC0) == 0x80) {
  if (utf8[0] == 0xFC && (utf8[1] & 0xFC) == 0x80)
   return 0;
  return 6;
 }
 else {
  return 0;
 }
}
