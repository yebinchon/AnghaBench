
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curltime {int member_1; int member_0; } ;
struct Curl_tree {struct Curl_tree* larger; TYPE_1__* samep; int smaller; int key; struct Curl_tree* samen; } ;
struct TYPE_2__ {struct Curl_tree* samen; } ;


 struct Curl_tree* Curl_splay (struct curltime,struct Curl_tree*) ;
 scalar_t__ compare (struct curltime,int ) ;

struct Curl_tree *Curl_splaygetbest(struct curltime i,
                                    struct Curl_tree *t,
                                    struct Curl_tree **removed)
{
  static struct curltime tv_zero = {0, 0};
  struct Curl_tree *x;

  if(!t) {
    *removed = ((void*)0);
    return ((void*)0);
  }


  t = Curl_splay(tv_zero, t);
  if(compare(i, t->key) < 0) {

    *removed = ((void*)0);
    return t;
  }


  x = t->samen;
  if(x != t) {




    x->key = t->key;
    x->larger = t->larger;
    x->smaller = t->smaller;
    x->samep = t->samep;
    t->samep->samen = x;

    *removed = t;
    return x;
  }


  x = t->larger;
  *removed = t;

  return x;
}
