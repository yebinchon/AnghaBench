
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _content_is_inited ;
 int core_does_not_need_content ;

void content_get_status(
      bool *contentless,
      bool *is_inited)
{
   *contentless = core_does_not_need_content;
   *is_inited = _content_is_inited;
}
