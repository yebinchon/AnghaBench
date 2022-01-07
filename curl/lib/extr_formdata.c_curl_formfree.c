
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_httppost {int flags; struct curl_httppost* showfilename; struct curl_httppost* contenttype; struct curl_httppost* contents; struct curl_httppost* name; struct curl_httppost* more; struct curl_httppost* next; } ;


 int HTTPPOST_BUFFER ;
 int HTTPPOST_CALLBACK ;
 int HTTPPOST_PTRCONTENTS ;
 int HTTPPOST_PTRNAME ;
 int free (struct curl_httppost*) ;

void curl_formfree(struct curl_httppost *form)
{
  struct curl_httppost *next;

  if(!form)

    return;

  do {
    next = form->next;


    curl_formfree(form->more);

    if(!(form->flags & HTTPPOST_PTRNAME))
      free(form->name);
    if(!(form->flags &
         (HTTPPOST_PTRCONTENTS|HTTPPOST_BUFFER|HTTPPOST_CALLBACK))
      )
      free(form->contents);
    free(form->contenttype);
    free(form->showfilename);
    free(form);
    form = next;
  } while(form);
}
