
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NameValueParserData {struct NameValue* l_head; } ;
struct NameValue {char* value; int name; struct NameValue* l_next; } ;


 scalar_t__ strcmp (int ,char const*) ;

char *
GetValueFromNameValueList(struct NameValueParserData * pdata,
                          const char * Name)
{
    struct NameValue * nv;
    char * p = ((void*)0);
    for(nv = pdata->l_head;
        (nv != ((void*)0)) && (p == ((void*)0));
        nv = nv->l_next)
    {
        if(strcmp(nv->name, Name) == 0)
            p = nv->value;
    }
    return p;
}
