
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSKextVersionStage ;
__attribute__((used)) static const char *
__OSKextVersionStringForStage(OSKextVersionStage stage)
{
 switch (stage) {
  case 129: return ((void*)0);
  case 130: return "d";
  case 133: return "a";
  case 132: return "b";
  case 131: return "f";
  case 128: return "";
 }
}
