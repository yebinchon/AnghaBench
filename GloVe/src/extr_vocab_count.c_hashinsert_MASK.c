#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* word; int count; struct TYPE_3__* next; } ;
typedef  TYPE_1__ HASHREC ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEED ; 
 int /*<<< orphan*/  TSIZE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

void FUNC5(HASHREC **ht, char *w) {
    HASHREC     *htmp, *hprv;
    unsigned int hval = FUNC0(w, TSIZE, SEED);
    
    for (hprv = NULL, htmp = ht[hval]; htmp != NULL && FUNC2(htmp->word, w) != 0; hprv = htmp, htmp = htmp->next);
    if (htmp == NULL) {
        htmp = (HASHREC *) FUNC1( sizeof(HASHREC) );
        htmp->word = (char *) FUNC1( FUNC4(w) + 1 );
        FUNC3(htmp->word, w);
        htmp->count = 1;
        htmp->next = NULL;
        if ( hprv==NULL )
            ht[hval] = htmp;
        else
            hprv->next = htmp;
    }
    else {
        /* new records are not moved to front */
        htmp->count++;
        if (hprv != NULL) {
            /* move to front on access */
            hprv->next = htmp->next;
            htmp->next = ht[hval];
            ht[hval] = htmp;
        }
    }
    return;
}