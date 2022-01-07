
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NameValueParserData {struct NameValue* l_head; scalar_t__ portListingLength; struct NameValue* portListing; } ;
struct NameValue {struct NameValue* l_next; } ;


 int free (struct NameValue*) ;

void
ClearNameValueList(struct NameValueParserData * pdata)
{
    struct NameValue * nv;
 if(pdata->portListing)
 {
  free(pdata->portListing);
  pdata->portListing = ((void*)0);
  pdata->portListingLength = 0;
 }
    while((nv = pdata->l_head) != ((void*)0))
    {
  pdata->l_head = nv->l_next;
        free(nv);
    }
}
