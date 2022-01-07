
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOL ;
 int END ;
 int EOL ;
 int LBRA ;
 int OR ;
 int PLUS ;
 int QUEST ;
 int RBRA ;
 int RUNE ;
 int STAR ;
 int bldcclass () ;
 int nextc (int*) ;
 int yyrune ;

__attribute__((used)) static int
lex(int literal, int dot_type)
{
 int quoted;

 quoted = nextc(&yyrune);
 if(literal || quoted){
  if(yyrune == 0)
   return END;
  return RUNE;
 }

 switch(yyrune){
 case 0:
  return END;
 case '*':
  return STAR;
 case '?':
  return QUEST;
 case '+':
  return PLUS;
 case '|':
  return OR;
 case '.':
  return dot_type;
 case '(':
  return LBRA;
 case ')':
  return RBRA;
 case '^':
  return BOL;
 case '$':
  return EOL;
 case '[':
  return bldcclass();
 }
 return RUNE;
}
