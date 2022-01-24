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
struct stat {int st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long*,unsigned long*) ; 
 unsigned long FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* segment_name ; 
 int FUNC5 (char*,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(int argc,char **argv)
{
    int res = 0;

    if(argc < 2){
        FUNC3(stderr, "Usage: %s file offset length\n", argv[0]);
        FUNC3(stderr, "If no offset and length are provided, the ELF section '%s' is skipped\n\n", segment_name);
        FUNC3(stderr, "Calculate a sha256 of a file except a skipped area from offset to offset+length bytes\n");
        FUNC3(stderr, "which is replaced with 0x00 during checksum calculation.\n");
        FUNC3(stderr, "This is useful when a signature is placed in the skipped area.\n");
        FUNC2(1);
    }

    unsigned long skip_offset = 0;
    unsigned long skip_length = 0;
    char *filename = argv[1];
        
    struct stat st;
    if (FUNC6(filename, &st) < 0) {
        FUNC3(stderr, "not existing file: %s\n", filename);
        FUNC2(1);
    }

    if(argc < 4){
        FUNC0(filename, ".sha256_sig", &skip_offset, &skip_length);
        if(skip_length > 0)
            FUNC3(stderr, "Skipping ELF section %s with offset %lu, length %lu\n", segment_name, skip_offset, skip_length);
    } else if(argc == 4) {
        skip_offset = FUNC1(argv[2]);
        skip_length = FUNC1(argv[3]);
    } else {
        FUNC2(1);
    }

    int size = st.st_size;
    if(size < skip_offset+skip_length){
        FUNC3(stderr, "offset+length cannot be less than the file size\n");
        FUNC2(1);
    }

    static char buffer[65];
    res = FUNC5(filename, buffer, skip_offset, skip_length);
    FUNC4("%s\n", buffer);
    return res;
}