
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_request_to_enroll(const u8 *request_to_enroll,
       int mandatory)
{
 if (request_to_enroll == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Request to Enroll "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (*request_to_enroll > 0x01) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Request to Enroll "
      "attribute value 0x%x", *request_to_enroll);
  return -1;
 }
 return 0;
}
