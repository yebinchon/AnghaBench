#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int id; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ CRECID ;
typedef  int /*<<< orphan*/  CREC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* file_head ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__,int) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_1__,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int verbose ; 

int FUNC11(int num) {
    int i, size;
    long long counter = 0;
    CRECID *pq, new, old;
    char filename[200];
    FILE **fid, *fout;
    fid = FUNC7(sizeof(FILE) * num);
    pq = FUNC7(sizeof(CRECID) * num);
    fout = stdout;
    if (verbose > 1) FUNC3(stderr, "Merging cooccurrence files: processed 0 lines.");
    
    /* Open all files and add first entry of each to priority queue */
    for (i = 0; i < num; i++) {
        FUNC10(filename,"%s_%04d.bin",file_head,i);
        fid[i] = FUNC2(filename,"rb");
        if (fid[i] == NULL) {FUNC3(stderr, "Unable to open file %s.\n",filename); return 1;}
        FUNC4(&new, sizeof(CREC), 1, fid[i]);
        new.id = i;
        FUNC6(pq,new,i+1);
    }
    
    /* Pop top node, save it in old to see if the next entry is a duplicate */
    size = num;
    old = pq[0];
    i = pq[0].id;
    FUNC0(pq, size);
    FUNC4(&new, sizeof(CREC), 1, fid[i]);
    if (FUNC1(fid[i])) size--;
    else {
        new.id = i;
        FUNC6(pq, new, size);
    }
    
    /* Repeatedly pop top node and fill priority queue until files have reached EOF */
    while (size > 0) {
        counter += FUNC8(pq[0], &old, fout); // Only count the lines written to file, not duplicates
        if ((counter%100000) == 0) if (verbose > 1) FUNC3(stderr,"\033[39G%lld lines.",counter);
        i = pq[0].id;
        FUNC0(pq, size);
        FUNC4(&new, sizeof(CREC), 1, fid[i]);
        if (FUNC1(fid[i])) size--;
        else {
            new.id = i;
            FUNC6(pq, new, size);
        }
    }
    FUNC5(&old, sizeof(CREC), 1, fout);
    FUNC3(stderr,"\033[0GMerging cooccurrence files: processed %lld lines.\n",++counter);
    for (i=0;i<num;i++) {
        FUNC10(filename,"%s_%04d.bin",file_head,i);
        FUNC9(filename);
    }
    FUNC3(stderr,"\n");
    return 0;
}