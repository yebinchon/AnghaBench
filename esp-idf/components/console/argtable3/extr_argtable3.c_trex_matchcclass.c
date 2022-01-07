
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRexChar ;
typedef int TRexBool ;


 int TRex_False ;
 int TRex_True ;
 int isalnum (int) ;
 int isalpha (int) ;
 int iscntrl (int) ;
 int isdigit (int) ;
 int islower (int) ;
 int ispunct (int) ;
 int isspace (int) ;
 int isupper (int) ;
 int isxdigit (int) ;

__attribute__((used)) static TRexBool trex_matchcclass(int cclass,TRexChar ch)
{
    int c = ch;
 switch(cclass) {
 case 'a': return isalpha(c)?TRex_True:TRex_False;
 case 'A': return !isalpha(c)?TRex_True:TRex_False;
 case 'w': return (isalnum(c) || c == '_')?TRex_True:TRex_False;
 case 'W': return (!isalnum(c) && c != '_')?TRex_True:TRex_False;
 case 's': return isspace(c)?TRex_True:TRex_False;
 case 'S': return !isspace(c)?TRex_True:TRex_False;
 case 'd': return isdigit(c)?TRex_True:TRex_False;
 case 'D': return !isdigit(c)?TRex_True:TRex_False;
 case 'x': return isxdigit(c)?TRex_True:TRex_False;
 case 'X': return !isxdigit(c)?TRex_True:TRex_False;
 case 'c': return iscntrl(c)?TRex_True:TRex_False;
 case 'C': return !iscntrl(c)?TRex_True:TRex_False;
 case 'p': return ispunct(c)?TRex_True:TRex_False;
 case 'P': return !ispunct(c)?TRex_True:TRex_False;
 case 'l': return islower(c)?TRex_True:TRex_False;
 case 'u': return isupper(c)?TRex_True:TRex_False;
 }
 return TRex_False;
}
