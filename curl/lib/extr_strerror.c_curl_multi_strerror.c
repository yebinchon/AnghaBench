
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLMcode ;
const char *
curl_multi_strerror(CURLMcode error)
{

  switch(error) {
  case 134:
    return "Please call curl_multi_perform() soon";

  case 131:
    return "No error";

  case 136:
    return "Invalid multi handle";

  case 137:
    return "Invalid easy handle";

  case 130:
    return "Out of memory";

  case 133:
    return "Internal error";

  case 135:
    return "Invalid socket argument";

  case 128:
    return "Unknown option";

  case 138:
    return "The easy handle is already added to a multi handle";

  case 129:
    return "API function called from within callback";

  case 132:
    break;
  }

  return "Unknown error";






}
