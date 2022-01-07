
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_name {char* uri; } ;


 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int os_free (char*) ;
 int os_memcpy (char*,int const*,size_t) ;
 size_t os_strlen (char*) ;
 scalar_t__ os_zalloc (size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int x509_parse_alt_name_uri(struct x509_name *name,
       const u8 *pos, size_t len)
{

 wpa_hexdump_ascii(MSG_MSGDUMP,
     "X509: altName - uniformResourceIdentifier",
     pos, len);
 os_free(name->uri);
 name->uri = (char *)os_zalloc(len + 1);
 if (name->uri == ((void*)0))
  return -1;
 os_memcpy(name->uri, pos, len);
 if (os_strlen(name->uri) != len) {
  wpa_printf(MSG_INFO, "X509: Reject certificate with "
      "embedded NUL byte in uniformResourceIdentifier "
      "(%s[NUL])", name->uri);
  os_free(name->uri);
  name->uri = ((void*)0);
  return -1;
 }
 return 0;
}
