
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParameterError ;
const char *param2text(int res)
{
  ParameterError error = (ParameterError)res;
  switch(error) {
  case 138:
    return "had unsupported trailing garbage";
  case 129:
    return "is unknown";
  case 130:
    return "is ambiguous";
  case 128:
    return "requires parameter";
  case 139:
    return "is badly used here";
  case 140:
    return "expected a proper numerical parameter";
  case 135:
    return "expected a positive numerical parameter";
  case 137:
    return "the installed libcurl version doesn't support this";
  case 136:
    return "a specified protocol is unsupported by libcurl";
  case 134:
    return "out of memory";
  case 132:
    return "the given option can't be reversed with a --no- prefix";
  case 131:
    return "too large number";
  case 133:
    return "used '--no-' for option that isn't a boolean";
  default:
    return "unknown error";
  }
}
