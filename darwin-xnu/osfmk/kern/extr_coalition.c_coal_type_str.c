
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *coal_type_str(int type)
{
 switch(type) {
 case 128:
  return "RESOURCE";
 case 129:
  return "JETSAM";
 default:
  return "<unknown>";
 }
}
