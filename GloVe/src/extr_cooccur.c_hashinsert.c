
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* word; long long id; struct TYPE_3__* next; } ;
typedef TYPE_1__ HASHREC ;


 unsigned int HASHFN (char*,int ,int ) ;
 int SEED ;
 int TSIZE ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ scmp (char*,char*) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void hashinsert(HASHREC **ht, char *w, long long id) {
    HASHREC *htmp, *hprv;
    unsigned int hval = HASHFN(w, TSIZE, SEED);
    for (hprv = ((void*)0), htmp = ht[hval]; htmp != ((void*)0) && scmp(htmp->word, w) != 0; hprv = htmp, htmp = htmp->next);
    if (htmp == ((void*)0)) {
        htmp = (HASHREC *) malloc(sizeof(HASHREC));
        htmp->word = (char *) malloc(strlen(w) + 1);
        strcpy(htmp->word, w);
        htmp->id = id;
        htmp->next = ((void*)0);
        if (hprv == ((void*)0)) ht[hval] = htmp;
        else hprv->next = htmp;
    }
    else fprintf(stderr, "Error, duplicate entry located: %s.\n",htmp->word);
    return;
}
