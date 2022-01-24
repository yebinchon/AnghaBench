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
typedef  double real ;
typedef  int /*<<< orphan*/  CREC ;

/* Variables and functions */
 int MAX_STRING_LENGTH ; 
 long long array_size ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long long FUNC2 (char*) ; 
 int /*<<< orphan*/  file_head ; 
 int FUNC3 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ memory_limit ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC8(int argc, char **argv) {
    int i;
    file_head = FUNC4(sizeof(char) * MAX_STRING_LENGTH);
    
    if (argc == 1) {
        FUNC5("Tool to shuffle entries of word-word cooccurrence files\n");
        FUNC5("Author: Jeffrey Pennington (jpennin@stanford.edu)\n\n");
        FUNC5("Usage options:\n");
        FUNC5("\t-verbose <int>\n");
        FUNC5("\t\tSet verbosity: 0, 1, or 2 (default)\n");
        FUNC5("\t-memory <float>\n");
        FUNC5("\t\tSoft limit for memory consumption, in GB; default 4.0\n");
        FUNC5("\t-array-size <int>\n");
        FUNC5("\t\tLimit to length <int> the buffer which stores chunks of data to shuffle before writing to disk. \n\t\tThis value overrides that which is automatically produced by '-memory'.\n");
        FUNC5("\t-temp-file <file>\n");
        FUNC5("\t\tFilename, excluding extension, for temporary files; default temp_shuffle\n");
        
        FUNC5("\nExample usage: (assuming 'cooccurrence.bin' has been produced by 'coccur')\n");
        FUNC5("./shuffle -verbose 2 -memory 8.0 < cooccurrence.bin > cooccurrence.shuf.bin\n");
        return 0;
    }
   
    if ((i = FUNC3((char *)"-verbose", argc, argv)) > 0) verbose = FUNC1(argv[i + 1]);
    if ((i = FUNC3((char *)"-temp-file", argc, argv)) > 0) FUNC7(file_head, argv[i + 1]);
    else FUNC7(file_head, (char *)"temp_shuffle");
    if ((i = FUNC3((char *)"-memory", argc, argv)) > 0) memory_limit = FUNC0(argv[i + 1]);
    array_size = (long long) (0.95 * (real)memory_limit * 1073741824/(sizeof(CREC)));
    if ((i = FUNC3((char *)"-array-size", argc, argv)) > 0) array_size = FUNC2(argv[i + 1]);
    return FUNC6();
}