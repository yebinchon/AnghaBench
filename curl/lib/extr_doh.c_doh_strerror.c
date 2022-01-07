
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t DOHcode ;


 size_t DOH_DNS_BAD_ID ;
 size_t DOH_OK ;
 char const** errors ;

__attribute__((used)) static const char *doh_strerror(DOHcode code)
{
  if((code >= DOH_OK) && (code <= DOH_DNS_BAD_ID))
    return errors[code];
  return "bad error code";
}
