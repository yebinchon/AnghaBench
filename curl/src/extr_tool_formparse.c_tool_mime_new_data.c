
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* data; } ;
typedef TYPE_1__ tool_mime ;


 int CONST_FREE (char const*) ;
 int TOOLMIME_DATA ;
 char* strdup (char const*) ;
 TYPE_1__* tool_mime_new (TYPE_1__*,int ) ;

__attribute__((used)) static tool_mime *tool_mime_new_data(tool_mime *parent, const char *data)
{
  tool_mime *m = ((void*)0);

  data = strdup(data);
  if(data) {
    m = tool_mime_new(parent, TOOLMIME_DATA);
    if(!m)
      CONST_FREE(data);
    else
      m->data = data;
  }
  return m;
}
