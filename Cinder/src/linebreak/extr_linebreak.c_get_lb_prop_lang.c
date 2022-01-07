
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LineBreakPropertiesLang {struct LineBreakProperties* lbp; int namelen; int * lang; } ;
struct LineBreakProperties {int dummy; } ;


 struct LineBreakPropertiesLang* lb_prop_lang_map ;
 scalar_t__ strncmp (char const*,int *,int ) ;

__attribute__((used)) static struct LineBreakProperties *get_lb_prop_lang(const char *lang)
{
 struct LineBreakPropertiesLang *lbplIter;
 if (lang != ((void*)0))
 {
  for (lbplIter = lb_prop_lang_map; lbplIter->lang != ((void*)0); ++lbplIter)
  {
   if (strncmp(lang, lbplIter->lang, lbplIter->namelen) == 0)
   {
    return lbplIter->lbp;
   }
  }
 }
 return ((void*)0);
}
