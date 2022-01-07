
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curltime {int dummy; } ;
struct Curl_tree {struct Curl_tree* smaller; struct Curl_tree* larger; int key; } ;


 long compare (struct curltime,int ) ;

struct Curl_tree *Curl_splay(struct curltime i,
                             struct Curl_tree *t)
{
  struct Curl_tree N, *l, *r, *y;

  if(t == ((void*)0))
    return t;
  N.smaller = N.larger = ((void*)0);
  l = r = &N;

  for(;;) {
    long comp = compare(i, t->key);
    if(comp < 0) {
      if(t->smaller == ((void*)0))
        break;
      if(compare(i, t->smaller->key) < 0) {
        y = t->smaller;
        t->smaller = y->larger;
        y->larger = t;
        t = y;
        if(t->smaller == ((void*)0))
          break;
      }
      r->smaller = t;
      r = t;
      t = t->smaller;
    }
    else if(comp > 0) {
      if(t->larger == ((void*)0))
        break;
      if(compare(i, t->larger->key) > 0) {
        y = t->larger;
        t->larger = y->smaller;
        y->smaller = t;
        t = y;
        if(t->larger == ((void*)0))
          break;
      }
      l->larger = t;
      l = t;
      t = t->larger;
    }
    else
      break;
  }

  l->larger = t->smaller;
  r->smaller = t->larger;
  t->smaller = N.larger;
  t->larger = N.smaller;

  return t;
}
