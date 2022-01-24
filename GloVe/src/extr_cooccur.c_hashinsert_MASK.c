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
struct TYPE_3__ {char* word; long long id; struct TYPE_3__* next; } ;
typedef  TYPE_1__ HASHREC ;

/* Variables and functions */
 unsigned int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEED ; 
 int /*<<< orphan*/  TSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

void FUNC6(HASHREC **ht, char *w, long long id) {
    HASHREC     *htmp, *hprv;
    unsigned int hval = FUNC0(w, TSIZE, SEED);
    for (hprv = NULL, htmp = ht[hval]; htmp != NULL && FUNC3(htmp->word, w) != 0; hprv = htmp, htmp = htmp->next);
    if (htmp == NULL) {
        htmp = (HASHREC *) FUNC2(sizeof(HASHREC));
        htmp->word = (char *) FUNC2(FUNC5(w) + 1);
        FUNC4(htmp->word, w);
        htmp->id = id;
        htmp->next = NULL;
        if (hprv == NULL) ht[hval] = htmp;
        else hprv->next = htmp;
    }
    else FUNC1(stderr, "Error, duplicate entry located: %s.\n",htmp->word);
    return;
}