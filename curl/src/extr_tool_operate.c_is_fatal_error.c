
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;







 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool is_fatal_error(CURLcode code)
{
  switch(code) {
  case 131:
  case 129:
  case 128:
  case 130:
  case 132:

    return TRUE;
  default:
    break;
  }


  return FALSE;
}
