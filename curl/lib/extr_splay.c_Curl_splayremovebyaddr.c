
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct curltime {unsigned int member_1; int member_0; } ;
struct Curl_tree {struct Curl_tree* larger; struct Curl_tree* smaller; int key; TYPE_1__* samep; struct Curl_tree* samen; } ;
struct TYPE_2__ {struct Curl_tree* samen; } ;


 struct Curl_tree* Curl_splay (int ,struct Curl_tree*) ;
 scalar_t__ compare (struct curltime const,int ) ;

int Curl_splayremovebyaddr(struct Curl_tree *t,
                           struct Curl_tree *removenode,
                           struct Curl_tree **newroot)
{
  static const struct curltime KEY_NOTUSED = {
    (time_t)-1, (unsigned int)-1
  };
  struct Curl_tree *x;

  if(!t || !removenode)
    return 1;

  if(compare(KEY_NOTUSED, removenode->key) == 0) {


    if(removenode->samen == removenode)

      return 3;

    removenode->samep->samen = removenode->samen;
    removenode->samen->samep = removenode->samep;


    removenode->samen = removenode;

    *newroot = t;
    return 0;
  }

  t = Curl_splay(removenode->key, t);
  if(t != removenode)
    return 2;



  x = t->samen;
  if(x != t) {



    x->key = t->key;
    x->larger = t->larger;
    x->smaller = t->smaller;
    x->samep = t->samep;
    t->samep->samen = x;
  }
  else {

    if(t->smaller == ((void*)0))
      x = t->larger;
    else {
      x = Curl_splay(removenode->key, t->smaller);
      x->larger = t->larger;
    }
  }

  *newroot = x;

  return 0;
}
