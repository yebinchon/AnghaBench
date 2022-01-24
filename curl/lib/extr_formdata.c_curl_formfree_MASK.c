#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct curl_httppost {int flags; struct curl_httppost* showfilename; struct curl_httppost* contenttype; struct curl_httppost* contents; struct curl_httppost* name; struct curl_httppost* more; struct curl_httppost* next; } ;

/* Variables and functions */
 int HTTPPOST_BUFFER ; 
 int HTTPPOST_CALLBACK ; 
 int HTTPPOST_PTRCONTENTS ; 
 int HTTPPOST_PTRNAME ; 
 int /*<<< orphan*/  FUNC0 (struct curl_httppost*) ; 

void FUNC1(struct curl_httppost *form)
{
  struct curl_httppost *next;

  if(!form)
    /* no form to free, just get out of this */
    return;

  do {
    next = form->next;  /* the following form line */

    /* recurse to sub-contents */
    FUNC1(form->more);

    if(!(form->flags & HTTPPOST_PTRNAME))
      FUNC0(form->name); /* free the name */
    if(!(form->flags &
         (HTTPPOST_PTRCONTENTS|HTTPPOST_BUFFER|HTTPPOST_CALLBACK))
      )
      FUNC0(form->contents); /* free the contents */
    FUNC0(form->contenttype); /* free the content type */
    FUNC0(form->showfilename); /* free the faked file name */
    FUNC0(form);       /* free the struct */
    form = next;
  } while(form); /* continue */
}