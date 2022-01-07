
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct tlsv1_credentials {int dummy; } ;


 int MSG_INFO ;
 int os_free (int const*) ;
 int tlsv1_set_dhparams_blob (struct tlsv1_credentials*,int const*,size_t) ;
 int wpa_printf (int ,char*,char const*) ;

int tlsv1_set_dhparams(struct tlsv1_credentials *cred, const char *dh_file,
         const u8 *dh_blob, size_t dh_blob_len)
{
 if (dh_blob)
  return tlsv1_set_dhparams_blob(cred, dh_blob, dh_blob_len);

 if (dh_file) {
  u8 *buf = ((void*)0);
  size_t len = 0;
  int ret;

  if (buf == ((void*)0)) {
   wpa_printf(MSG_INFO, "TLSv1: Failed to read '%s'",
       dh_file);
   return -1;
  }

  ret = tlsv1_set_dhparams_blob(cred, buf, len);
  os_free(buf);
  return ret;
 }

 return 0;
}
