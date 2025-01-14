
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmlparser {char* xml; char* xmlend; int data; int (* attfunc ) (int ,char const*,int,char const*,int) ;} ;


 scalar_t__ IS_WHITE_SPACE (char) ;
 int stub1 (int ,char const*,int,char const*,int) ;

__attribute__((used)) static int parseatt(struct xmlparser * p)
{
 const char * attname;
 int attnamelen;
 const char * attvalue;
 int attvaluelen;
 while(p->xml < p->xmlend)
 {
  if(*p->xml=='/' || *p->xml=='>')
   return 0;
  if( !IS_WHITE_SPACE(*p->xml) )
  {
   char sep;
   attname = p->xml;
   attnamelen = 0;
   while(*p->xml!='=' && !IS_WHITE_SPACE(*p->xml) )
   {
    attnamelen++; p->xml++;
    if(p->xml >= p->xmlend)
     return -1;
   }
   while(*(p->xml++) != '=')
   {
    if(p->xml >= p->xmlend)
     return -1;
   }
   while(IS_WHITE_SPACE(*p->xml))
   {
    p->xml++;
    if(p->xml >= p->xmlend)
     return -1;
   }
   sep = *p->xml;
   if(sep=='\'' || sep=='\"')
   {
    p->xml++;
    if(p->xml >= p->xmlend)
     return -1;
    attvalue = p->xml;
    attvaluelen = 0;
    while(*p->xml != sep)
    {
     attvaluelen++; p->xml++;
     if(p->xml >= p->xmlend)
      return -1;
    }
   }
   else
   {
    attvalue = p->xml;
    attvaluelen = 0;
    while( !IS_WHITE_SPACE(*p->xml)
       && *p->xml != '>' && *p->xml != '/')
    {
     attvaluelen++; p->xml++;
     if(p->xml >= p->xmlend)
      return -1;
    }
   }


   if(p->attfunc)
    p->attfunc(p->data, attname, attnamelen, attvalue, attvaluelen);
  }
  p->xml++;
 }
 return -1;
}
