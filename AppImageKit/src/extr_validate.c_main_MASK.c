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
typedef  int uint8_t ;
struct stat {int st_size; } ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long*,unsigned long*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int*,unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 char* segment_name ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int FUNC21(int argc,char **argv)	{
    if(argc < 2){
        FUNC6(stderr, "Usage: %s Signed.AppImage\n", argv[0]);
        FUNC3(1);
    }

    char *filename = argv[1]; 

    unsigned long skip_offset = 0;
    unsigned long skip_length = 0;
  
    if (!FUNC1(filename, ".sha256_sig", &skip_offset, &skip_length)) {
        FUNC6(stderr, "Failed to read .sha256_sig section");
        FUNC3(1);
    }

    if(skip_length > 0) {
        FUNC6(stderr, "Skipping ELF section %s with offset %lu, length %lu\n", segment_name, skip_offset, skip_length);
    } else {
        FUNC6(stderr, "ELF section %s not found, is the file signed?\n", segment_name);
        FUNC3(1);
    }
    
    char *digestfile;
    digestfile = FUNC12("/tmp/", FUNC2(FUNC12(filename, ".digest", NULL)), NULL);
    char *signaturefile;
    signaturefile = FUNC12("/tmp/", FUNC2(FUNC12(filename, ".sig", NULL)), NULL);

    uint8_t *data = FUNC13(skip_length);
    unsigned long k;
    FILE* fd = FUNC5(filename, "r");
    FUNC9(fd, skip_offset, SEEK_SET);
    FUNC7(data, skip_length, sizeof(uint8_t), fd);
    FUNC4(fd);
    FILE *fpdst2 = FUNC5(signaturefile, "w");
    if (fpdst2 == NULL) {
        FUNC6(stderr, "Not able to open the signature file for writing, aborting");
        FUNC3(1);
    }
    for (k = 0; k < skip_length; k++) {
        FUNC6(*fpdst2, "%c", data[k]);
    }   
    FUNC4(fpdst2);
    FUNC8(data);
    
    struct stat st;
    FUNC19(filename, &st);
    int size = st.st_size;
    if(size < skip_offset+skip_length){
        FUNC6(stderr, "offset+length cannot be less than the file size\n");
        FUNC3(1);
    }

    static char buffer[65];
    FUNC17(filename, buffer, skip_offset, skip_length);
    FUNC16("%s\n", buffer);
    

    FILE *f = FUNC5(digestfile, "w");
    if (f == NULL){
        FUNC16("Error opening digestfile\n");
        FUNC3(1);
    }
    FUNC6(*f, "%s", buffer);
    FUNC4(f);
    if (! FUNC10(digestfile, G_FILE_TEST_IS_REGULAR)) {
        FUNC16("Error writing digestfile\n");
        FUNC3(1);        
    }
    
    char command[1024];
    gchar *gpg2_path = FUNC11 ("gpg2");
    FUNC18 (command, "%s --verify %s %s", gpg2_path, signaturefile, digestfile);
    FUNC6 (stderr, "%s\n", command);
    FILE *fp = FUNC15(command, "r");
    if (fp == NULL)
        FUNC6(stderr, "gpg2 command did not succeed");
    int exitcode = FUNC0(FUNC14(fp));
    FUNC20(digestfile);
    FUNC20(signaturefile);
    return exitcode;
}