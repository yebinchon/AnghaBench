
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct FormInfo {int dummy; } ;
struct TYPE_5__ {char* value; char* contenttype; struct TYPE_5__* more; int flags; } ;
typedef TYPE_1__ FormInfo ;


 int HTTPPOST_FILENAME ;
 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static FormInfo * AddFormInfo(char *value,
                              char *contenttype,
                              FormInfo *parent_form_info)
{
  FormInfo *form_info;
  form_info = calloc(1, sizeof(struct FormInfo));
  if(form_info) {
    if(value)
      form_info->value = value;
    if(contenttype)
      form_info->contenttype = contenttype;
    form_info->flags = HTTPPOST_FILENAME;
  }
  else
    return ((void*)0);

  if(parent_form_info) {

    form_info->more = parent_form_info->more;


    parent_form_info->more = form_info;
  }

  return form_info;
}
