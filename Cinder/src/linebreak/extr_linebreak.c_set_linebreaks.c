
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf32_t ;
struct LineBreakProperties {int dummy; } ;
typedef scalar_t__ (* get_next_char_t ) (void const*,size_t,size_t*) ;
typedef enum LineBreakClass { ____Placeholder_LineBreakClass } LineBreakClass ;





 scalar_t__ EOS ;

 int LBP_BA ;



 int LBP_JT ;



 int LBP_Undefined ;
 int LBP_WJ ;
 char LINEBREAK_ALLOWBREAK ;
 char LINEBREAK_INSIDEACHAR ;
 char LINEBREAK_MUSTBREAK ;
 char LINEBREAK_NOBREAK ;

 int assert (int) ;
 int** baTable ;
 int get_char_lb_class_lang (scalar_t__,struct LineBreakProperties*) ;
 struct LineBreakProperties* get_lb_prop_lang (char const*) ;
 int resolve_lb_class (int,char const*) ;

void set_linebreaks(
  const void *s,
  size_t len,
  const char *lang,
  char *brks,
  get_next_char_t get_next_char)
{
 utf32_t ch;
 enum LineBreakClass lbcCur;
 enum LineBreakClass lbcNew;
 enum LineBreakClass lbcLast;
 struct LineBreakProperties *lbpLang;
 size_t posCur = 0;
 size_t posLast = 0;

 --posLast;
 ch = get_next_char(s, len, &posCur);
 if (ch == EOS)
  return;
 lbpLang = get_lb_prop_lang(lang);
 lbcCur = resolve_lb_class(get_char_lb_class_lang(ch, lbpLang), lang);
 lbcNew = LBP_Undefined;

nextline:


 switch (lbcCur)
 {
 case 131:
 case 130:
  lbcCur = 134;
  break;
 case 133:
  lbcCur = LBP_BA;
  break;
 case 129:
  lbcCur = LBP_WJ;
  break;
 default:
  break;
 }


 for (;;)
 {
  for (++posLast; posLast < posCur - 1; ++posLast)
  {
   brks[posLast] = LINEBREAK_INSIDEACHAR;
  }
  assert(posLast == posCur - 1);
  lbcLast = lbcNew;
  ch = get_next_char(s, len, &posCur);
  if (ch == EOS)
   break;
  lbcNew = get_char_lb_class_lang(ch, lbpLang);
  if (lbcCur == 134 || (lbcCur == 132 && lbcNew != 131))
  {
   brks[posLast] = LINEBREAK_MUSTBREAK;
   lbcCur = resolve_lb_class(lbcNew, lang);
   goto nextline;
  }

  switch (lbcNew)
  {
  case 129:
   brks[posLast] = LINEBREAK_NOBREAK;
   continue;
  case 134:
  case 131:
  case 130:
   brks[posLast] = LINEBREAK_NOBREAK;
   lbcCur = 134;
   continue;
  case 132:
   brks[posLast] = LINEBREAK_NOBREAK;
   lbcCur = 132;
   continue;
  case 133:
   brks[posLast] = LINEBREAK_ALLOWBREAK;
   lbcCur = LBP_BA;
   continue;
  default:
   break;
  }

  lbcNew = resolve_lb_class(lbcNew, lang);

  assert(lbcCur <= LBP_JT);
  assert(lbcNew <= LBP_JT);
  switch (baTable[lbcCur - 1][lbcNew - 1])
  {
  case 136:
   brks[posLast] = LINEBREAK_ALLOWBREAK;
   break;
  case 138:
  case 135:
   if (lbcLast == 129)
   {
    brks[posLast] = LINEBREAK_ALLOWBREAK;
   }
   else
   {
    brks[posLast] = LINEBREAK_NOBREAK;
   }
   break;
  case 137:
   brks[posLast] = LINEBREAK_NOBREAK;
   if (lbcLast != 129)
    continue;
   break;
  case 128:
   brks[posLast] = LINEBREAK_NOBREAK;
   break;
  }

  lbcCur = lbcNew;
 }

 assert(posLast == posCur - 1 && posCur <= len);

 brks[posLast] = LINEBREAK_MUSTBREAK;

 while (posCur < len)
 {
  brks[posCur++] = LINEBREAK_INSIDEACHAR;
 }
}
