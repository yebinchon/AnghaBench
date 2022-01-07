
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OperationConfig {int global; } ;


 long CURLGSSAPI_DELEGATION_FLAG ;
 long CURLGSSAPI_DELEGATION_NONE ;
 long CURLGSSAPI_DELEGATION_POLICY_FLAG ;
 scalar_t__ curl_strequal (char*,char*) ;
 int warnf (int ,char*,char*) ;

long delegation(struct OperationConfig *config, char *str)
{
  if(curl_strequal("none", str))
    return CURLGSSAPI_DELEGATION_NONE;
  if(curl_strequal("policy", str))
    return CURLGSSAPI_DELEGATION_POLICY_FLAG;
  if(curl_strequal("always", str))
    return CURLGSSAPI_DELEGATION_FLAG;

  warnf(config->global, "unrecognized delegation method '%s', using none\n",
        str);

  return CURLGSSAPI_DELEGATION_NONE;
}
