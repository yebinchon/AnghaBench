
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_alloc_size_t ;


 scalar_t__ is_ICC_signature_char (int) ;

__attribute__((used)) static int
is_ICC_signature(png_alloc_size_t it)
{
   return is_ICC_signature_char(it >> 24) &&
      is_ICC_signature_char((it >> 16) & 0xff) &&
      is_ICC_signature_char((it >> 8) & 0xff) &&
      is_ICC_signature_char(it & 0xff);
}
