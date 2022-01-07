
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tool_mime ;


 int TOOLMIME_PARTS ;
 int * tool_mime_new (int *,int ) ;

__attribute__((used)) static tool_mime *tool_mime_new_parts(tool_mime *parent)
{
  return tool_mime_new(parent, TOOLMIME_PARTS);
}
