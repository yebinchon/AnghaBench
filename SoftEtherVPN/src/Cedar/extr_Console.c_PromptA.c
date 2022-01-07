
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 char* CopyUniToStr (int *) ;
 int Free (int *) ;
 int * Prompt (int *) ;

char *PromptA(wchar_t *prompt_str)
{
 wchar_t *str = Prompt(prompt_str);

 if (str == ((void*)0))
 {
  return ((void*)0);
 }
 else
 {
  char *ret = CopyUniToStr(str);

  Free(str);
  return ret;
 }
}
