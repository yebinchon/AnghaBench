
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etypes ;






__attribute__((used)) static const char *
etype_name(etypes etype)
{
 switch (etype) {
 case 128:
  return ("des3-cbc-sha1");
 case 130:
  return ("aes128-cts-hmac-sha1-96");
 case 129:
  return ("aes-cts-hmac-sha1-96");
 default:
  return ("unknown enctype");
 }
}
