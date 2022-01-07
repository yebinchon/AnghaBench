
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int out_uint16_be (int ,int) ;
 int out_uint8 (int ,int) ;

__attribute__((used)) static void
ber_out_header(STREAM s, int tagval, int length)
{
 if (tagval > 0xff)
 {
  out_uint16_be(s, tagval);
 }
 else
 {
  out_uint8(s, tagval);
 }

 if (length >= 0x80)
 {
  out_uint8(s, 0x82);
  out_uint16_be(s, length);
 }
 else
  out_uint8(s, length);
}
