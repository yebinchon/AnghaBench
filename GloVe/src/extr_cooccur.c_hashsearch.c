
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int word; } ;
typedef TYPE_1__ HASHREC ;


 unsigned int HASHFN (char*,int ,int ) ;
 int SEED ;
 int TSIZE ;
 scalar_t__ scmp (int ,char*) ;

HASHREC *hashsearch(HASHREC **ht, char *w) {
    HASHREC *htmp, *hprv;
    unsigned int hval = HASHFN(w, TSIZE, SEED);
    for (hprv = ((void*)0), htmp=ht[hval]; htmp != ((void*)0) && scmp(htmp->word, w) != 0; hprv = htmp, htmp = htmp->next);
    if ( htmp != ((void*)0) && hprv!=((void*)0) ) {
        hprv->next = htmp->next;
        htmp->next = ht[hval];
        ht[hval] = htmp;
    }
    return(htmp);
}
