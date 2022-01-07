
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum LineBreakClass { ____Placeholder_LineBreakClass } LineBreakClass ;



 int LBP_AL ;
 int LBP_ID ;



 int strncmp (char const*,char*,int) ;

__attribute__((used)) static enum LineBreakClass resolve_lb_class(
  enum LineBreakClass lbc,
  const char *lang)
{
 switch (lbc)
 {
 case 131:
  if (lang != ((void*)0) &&
    (strncmp(lang, "zh", 2) == 0 ||
     strncmp(lang, "ja", 2) == 0 ||
     strncmp(lang, "ko", 2) == 0))
  {
   return LBP_ID;
  }

 case 130:
 case 129:
 case 128:
  return LBP_AL;
 default:
  return lbc;
 }
}
