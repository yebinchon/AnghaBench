
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLSHcode ;
const char *
curl_share_strerror(CURLSHcode error)
{

  switch(error) {
  case 128:
    return "No error";

  case 134:
    return "Unknown share option";

  case 132:
    return "Share currently in use";

  case 133:
    return "Invalid share handle";

  case 130:
    return "Out of memory";

  case 129:
    return "Feature not enabled in this library";

  case 131:
    break;
  }

  return "CURLSHcode unknown";






}
