
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int toolmimekind ;
struct TYPE_4__ {struct TYPE_4__* subparts; struct TYPE_4__* prev; struct TYPE_4__* parent; int kind; } ;
typedef TYPE_1__ tool_mime ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static tool_mime *tool_mime_new(tool_mime *parent, toolmimekind kind)
{
  tool_mime *m = (tool_mime *) calloc(1, sizeof(*m));

  if(m) {
    m->kind = kind;
    m->parent = parent;
    if(parent) {
      m->prev = parent->subparts;
      parent->subparts = m;
    }
  }
  return m;
}
