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
typedef  char* sds ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int FUNC4 (char*,int,int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,int) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC11(char *configfile, sds content) {
    int retval = 0;
    int fd = FUNC4(configfile,O_RDWR|O_CREAT,0644);
    int content_size = FUNC8(content), padding = 0;
    struct stat sb;
    sds content_padded;

    /* 1) Open the old file (or create a new one if it does not
     *    exist), get the size. */
    if (fd == -1) return -1; /* errno set by open(). */
    if (FUNC1(fd,&sb) == -1) {
        FUNC0(fd);
        return -1; /* errno set by fstat(). */
    }

    /* 2) Pad the content at least match the old file size. */
    content_padded = FUNC5(content);
    if (content_size < sb.st_size) {
        /* If the old file was bigger, pad the content with
         * a newline plus as many "#" chars as required. */
        padding = sb.st_size - content_size;
        content_padded = FUNC7(content_padded,sb.st_size);
        content_padded[content_size] = '\n';
        FUNC3(content_padded+content_size+1,'#',padding-1);
    }

    /* 3) Write the new content using a single write(2). */
    if (FUNC10(fd,content_padded,FUNC9(content_padded)) == -1) {
        retval = -1;
        goto cleanup;
    }

    /* 4) Truncate the file to the right length if we used padding. */
    if (padding) {
        if (FUNC2(fd,content_size) == -1) {
            /* Non critical error... */
        }
    }

cleanup:
    FUNC6(content_padded);
    FUNC0(fd);
    return retval;
}