#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CREC ;

/* Variables and functions */
 int MAX_STRING_LENGTH ; 
 int array_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* file_head ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 

int FUNC11() {
    long i = 0, l = 0;
    int fidcounter = 0;
    char filename[MAX_STRING_LENGTH];
    CREC *array;
    FILE *fin = stdin, *fid;
    array = FUNC6(sizeof(CREC) * array_size);
    
    FUNC3(stderr,"SHUFFLING COOCCURRENCES\n");
    if (verbose > 0) FUNC3(stderr,"array size: %lld\n", array_size);
    FUNC9(filename,"%s_%04d.bin",file_head, fidcounter);
    fid = FUNC2(filename,"w");
    if (fid == NULL) {
        FUNC3(stderr, "Unable to open file %s.\n",filename);
        return 1;
    }
    if (verbose > 1) FUNC3(stderr, "Shuffling by chunks: processed 0 lines.");
    
    while (1) { //Continue until EOF
        if (i >= array_size) {// If array is full, shuffle it and save to temporary file
            FUNC7(array, i-2);
            l += i;
            if (verbose > 1) FUNC3(stderr, "\033[22Gprocessed %ld lines.", l);
            FUNC10(array,i,fid);
            FUNC0(fid);
            fidcounter++;
            FUNC9(filename,"%s_%04d.bin",file_head, fidcounter);
            fid = FUNC2(filename,"w");
            if (fid == NULL) {
                FUNC3(stderr, "Unable to open file %s.\n",filename);
                return 1;
            }
            i = 0;
        }
        FUNC4(&array[i], sizeof(CREC), 1, fin);
        if (FUNC1(fin)) break;
        i++;
    }
    FUNC7(array, i-2); //Last chunk may be smaller than array_size
    FUNC10(array,i,fid);
    l += i;
    if (verbose > 1) FUNC3(stderr, "\033[22Gprocessed %ld lines.\n", l);
    if (verbose > 1) FUNC3(stderr, "Wrote %d temporary file(s).\n", fidcounter + 1);
    FUNC0(fid);
    FUNC5(array);
    return FUNC8(fidcounter + 1); // Merge and shuffle together temporary files
}