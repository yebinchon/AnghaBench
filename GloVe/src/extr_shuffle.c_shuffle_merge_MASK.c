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
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *) ; 

int FUNC11(int num) {
    long i, j, k, l = 0;
    int fidcounter = 0;
    CREC *array;
    char filename[MAX_STRING_LENGTH];
    FILE **fid, *fout = stdout;
    
    array = FUNC6(sizeof(CREC) * array_size);
    fid = FUNC6(sizeof(FILE) * num);
    for (fidcounter = 0; fidcounter < num; fidcounter++) { //num = number of temporary files to merge
        FUNC9(filename,"%s_%04d.bin",file_head, fidcounter);
        fid[fidcounter] = FUNC2(filename, "rb");
        if (fid[fidcounter] == NULL) {
            FUNC3(stderr, "Unable to open file %s.\n",filename);
            return 1;
        }
    }
    if (verbose > 0) FUNC3(stderr, "Merging temp files: processed %ld lines.", l);
    
    while (1) { //Loop until EOF in all files
        i = 0;
        //Read at most array_size values into array, roughly array_size/num from each temp file
        for (j = 0; j < num; j++) {
            if (FUNC1(fid[j])) continue;
            for (k = 0; k < array_size / num; k++){
                FUNC4(&array[i], sizeof(CREC), 1, fid[j]);
                if (FUNC1(fid[j])) break;
                i++;
            }
        }
        if (i == 0) break;
        l += i;
        FUNC8(array, i-1); // Shuffles lines between temp files
        FUNC10(array,i,fout);
        if (verbose > 0) FUNC3(stderr, "\033[31G%ld lines.", l);
    }
    FUNC3(stderr, "\033[0GMerging temp files: processed %ld lines.", l);
    for (fidcounter = 0; fidcounter < num; fidcounter++) {
        FUNC0(fid[fidcounter]);
        FUNC9(filename,"%s_%04d.bin",file_head, fidcounter);
        FUNC7(filename);
    }
    FUNC3(stderr, "\n\n");
    FUNC5(array);
    return 0;
}