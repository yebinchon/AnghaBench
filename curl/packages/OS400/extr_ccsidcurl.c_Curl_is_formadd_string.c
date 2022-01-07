
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLformoption ;
__attribute__((used)) static int
Curl_is_formadd_string(CURLformoption option)

{
  switch(option) {

  case 128:
  case 133:
  case 134:
  case 130:
  case 129:
  case 132:
  case 131:
    return 1;
  }

  return 0;
}
