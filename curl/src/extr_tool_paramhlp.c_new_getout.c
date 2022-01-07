
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getout {int flags; struct getout* next; } ;
struct OperationConfig {int default_node_flags; struct getout* url_last; struct getout* url_list; } ;


 struct getout* calloc (int,int) ;

struct getout *new_getout(struct OperationConfig *config)
{
  struct getout *node = calloc(1, sizeof(struct getout));
  struct getout *last = config->url_last;
  if(node) {

    if(last)
      last->next = node;
    else
      config->url_list = node;


    config->url_last = node;

    node->flags = config->default_node_flags;
  }
  return node;
}
