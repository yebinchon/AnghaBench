
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_memcpy (int *,int const*,size_t) ;
 int os_memset (int *,int ,size_t) ;

size_t wpa_merge_byte_arrays(u8 *res, size_t res_len,
    const u8 *src1, size_t src1_len,
    const u8 *src2, size_t src2_len)
{
 size_t len = 0;

 os_memset(res, 0, res_len);

 if (src1) {
  if (src1_len >= res_len) {
   os_memcpy(res, src1, res_len);
   return res_len;
  }

  os_memcpy(res, src1, src1_len);
  len += src1_len;
 }

 if (src2) {
  if (len + src2_len >= res_len) {
   os_memcpy(res + len, src2, res_len - len);
   return res_len;
  }

  os_memcpy(res + len, src2, src2_len);
  len += src2_len;
 }

 return len;
}
