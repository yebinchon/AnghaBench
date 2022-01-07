
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct x509_name {char* email; size_t num_attr; TYPE_1__* attr; } ;
struct asn1_oid {int len; int* oid; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int * payload; } ;
typedef enum x509_name_attr_type { ____Placeholder_x509_name_attr_type } x509_name_attr_type ;
struct TYPE_2__ {int type; char* value; } ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 scalar_t__ ASN1_TAG_SET ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 size_t X509_MAX_NAME_ATTRIBUTES ;
 int X509_NAME_ATTR_C ;
 int X509_NAME_ATTR_CN ;
 int X509_NAME_ATTR_DC ;
 int X509_NAME_ATTR_L ;
 int X509_NAME_ATTR_NOT_USED ;
 int X509_NAME_ATTR_O ;
 int X509_NAME_ATTR_OU ;
 int X509_NAME_ATTR_ST ;
 scalar_t__ asn1_get_next (int const*,int,struct asn1_hdr*) ;
 scalar_t__ asn1_get_oid (int const*,int,struct asn1_oid*,int const**) ;
 scalar_t__ dup_binstr (int *,size_t) ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_memcpy (char*,int *,int) ;
 size_t os_strlen (char*) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_hexdump_ascii (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int x509_free_name (struct x509_name*) ;

__attribute__((used)) static int x509_parse_name(const u8 *buf, size_t len, struct x509_name *name,
      const u8 **next)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end, *set_pos, *set_end, *seq_pos, *seq_end;
 struct asn1_oid oid;
 char *val;
 if (asn1_get_next(buf, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG, "X509: Expected SEQUENCE "
      "(Name / RDNSequencer) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return -1;
 }
 pos = hdr.payload;

 if (pos + hdr.length > buf + len)
  return -1;

 end = *next = pos + hdr.length;

 while (pos < end) {
  enum x509_name_attr_type type;

  if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_UNIVERSAL ||
      hdr.tag != ASN1_TAG_SET) {
   wpa_printf(MSG_DEBUG, "X509: Expected SET "
       "(RelativeDistinguishedName) - found class "
       "%d tag 0x%x", hdr.class, hdr.tag);
   x509_free_name(name);
   return -1;
  }

  set_pos = hdr.payload;
  pos = set_end = hdr.payload + hdr.length;

  if (asn1_get_next(set_pos, set_end - set_pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_UNIVERSAL ||
      hdr.tag != ASN1_TAG_SEQUENCE) {
   wpa_printf(MSG_DEBUG, "X509: Expected SEQUENCE "
       "(AttributeTypeAndValue) - found class %d "
       "tag 0x%x", hdr.class, hdr.tag);
   x509_free_name(name);
   return -1;
  }

  seq_pos = hdr.payload;
  seq_end = hdr.payload + hdr.length;

  if (asn1_get_oid(seq_pos, seq_end - seq_pos, &oid, &seq_pos)) {
   x509_free_name(name);
   return -1;
  }

  if (asn1_get_next(seq_pos, seq_end - seq_pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_UNIVERSAL) {
   wpa_printf(MSG_DEBUG, "X509: Failed to parse "
       "AttributeValue");
   x509_free_name(name);
   return -1;
  }
  type = X509_NAME_ATTR_NOT_USED;
  if (oid.len == 4 &&
      oid.oid[0] == 2 && oid.oid[1] == 5 && oid.oid[2] == 4) {

   switch (oid.oid[3]) {
   case 3:

    type = X509_NAME_ATTR_CN;
    break;
   case 6:

    type = X509_NAME_ATTR_C;
    break;
   case 7:

    type = X509_NAME_ATTR_L;
    break;
   case 8:

    type = X509_NAME_ATTR_ST;
    break;
   case 10:

    type = X509_NAME_ATTR_O;
    break;
   case 11:

    type = X509_NAME_ATTR_OU;
    break;
   }
  } else if (oid.len == 7 &&
      oid.oid[0] == 1 && oid.oid[1] == 2 &&
      oid.oid[2] == 840 && oid.oid[3] == 113549 &&
      oid.oid[4] == 1 && oid.oid[5] == 9 &&
      oid.oid[6] == 1) {

   os_free(name->email);
   name->email = os_malloc(hdr.length + 1);
   if (name->email == ((void*)0)) {
    x509_free_name(name);
    return -1;
   }
   os_memcpy(name->email, hdr.payload, hdr.length);
   name->email[hdr.length] = '\0';
   continue;
  } else if (oid.len == 7 &&
      oid.oid[0] == 0 && oid.oid[1] == 9 &&
      oid.oid[2] == 2342 && oid.oid[3] == 19200300 &&
      oid.oid[4] == 100 && oid.oid[5] == 1 &&
      oid.oid[6] == 25) {

   type = X509_NAME_ATTR_DC;
  }

  if (type == X509_NAME_ATTR_NOT_USED) {
   wpa_hexdump(MSG_DEBUG, "X509: Unrecognized OID",
        (u8 *) oid.oid,
        oid.len * sizeof(oid.oid[0]));
   wpa_hexdump_ascii(MSG_MSGDUMP, "X509: Attribute Data",
       hdr.payload, hdr.length);
   continue;
  }

  if (name->num_attr == X509_MAX_NAME_ATTRIBUTES) {
   wpa_printf(MSG_INFO, "X509: Too many Name attributes");
   x509_free_name(name);
   return -1;
  }

  val = (char *)dup_binstr(hdr.payload, hdr.length);
  if (val == ((void*)0)) {
   x509_free_name(name);
   return -1;
  }
  if (os_strlen(val) != hdr.length) {
   wpa_printf(MSG_INFO, "X509: Reject certificate with "
       "embedded NUL byte in a string (%s[NUL])",
       val);
   os_free(val);
   x509_free_name(name);
   return -1;
  }

  name->attr[name->num_attr].type = type;
  name->attr[name->num_attr].value = val;
  name->num_attr++;
 }

 return 0;
}
