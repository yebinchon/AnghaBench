
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct curltime {unsigned int member_1; int member_0; } ;
struct Curl_tree {struct Curl_tree* samep; struct Curl_tree* samen; struct curltime key; struct Curl_tree* larger; struct Curl_tree* smaller; } ;


 struct Curl_tree* Curl_splay (struct curltime,struct Curl_tree*) ;
 scalar_t__ compare (struct curltime,struct curltime) ;

struct Curl_tree *Curl_splayinsert(struct curltime i,
                                   struct Curl_tree *t,
                                   struct Curl_tree *node)
{
  static const struct curltime KEY_NOTUSED = {
    (time_t)-1, (unsigned int)-1
  };

  if(node == ((void*)0))
    return t;

  if(t != ((void*)0)) {
    t = Curl_splay(i, t);
    if(compare(i, t->key) == 0) {




      node->key = KEY_NOTUSED;

      node->samen = t;
      node->samep = t->samep;
      t->samep->samen = node;
      t->samep = node;

      return t;
    }
  }

  if(t == ((void*)0)) {
    node->smaller = node->larger = ((void*)0);
  }
  else if(compare(i, t->key) < 0) {
    node->smaller = t->smaller;
    node->larger = t;
    t->smaller = ((void*)0);

  }
  else {
    node->larger = t->larger;
    node->smaller = t;
    t->larger = ((void*)0);
  }
  node->key = i;


  node->samen = node;
  node->samep = node;
  return node;
}
