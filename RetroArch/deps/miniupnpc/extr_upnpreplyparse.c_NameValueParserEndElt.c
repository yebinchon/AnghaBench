
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NameValueParserData {int cdatalen; scalar_t__ topelt; int * cdata; struct NameValue* l_head; int curelt; } ;
struct NameValue {char* name; char* value; struct NameValue* l_next; } ;


 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,int *,int) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void
NameValueParserEndElt(void * d, const char * name, int l)
{
    struct NameValueParserData * data = (struct NameValueParserData *)d;
    struct NameValue * nv;
 (void)name;
 (void)l;
 if(!data->topelt)
  return;
 if(strcmp(data->curelt, "NewPortListing") != 0)
 {
  int l;

  l = data->cdatalen;
     nv = (struct NameValue*)malloc(sizeof(struct NameValue));
  if(nv == ((void*)0))
  {





   return;
  }
     if(l>=(int)sizeof(nv->value))
         l = sizeof(nv->value) - 1;
     strncpy(nv->name, data->curelt, 64);
  nv->name[63] = '\0';
  if(data->cdata != ((void*)0))
  {
   memcpy(nv->value, data->cdata, l);
   nv->value[l] = '\0';
  }
  else
  {
   nv->value[0] = '\0';
  }
  nv->l_next = data->l_head;
  data->l_head = nv;
 }
 data->cdata = ((void*)0);
 data->cdatalen = 0;
 data->topelt = 0;
}
