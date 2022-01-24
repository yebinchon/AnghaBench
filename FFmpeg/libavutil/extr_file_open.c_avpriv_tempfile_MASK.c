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
struct TYPE_3__ {int member_1; void* member_2; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ FileLogContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (void*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  file_log_ctx_class ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,char*,char const*) ; 
 int FUNC9 (char const*) ; 
 void* FUNC10 (char*,char const*) ; 

int FUNC11(const char *prefix, char **filename, int log_offset, void *log_ctx)
{
    FileLogContext file_log_ctx = { file_log_ctx_class, log_offset, log_ctx };
    int fd = -1;
#if !HAVE_MKSTEMP
    void *ptr= FUNC10(NULL, prefix);
    if(!ptr)
        ptr= FUNC10(".", prefix);
    *filename = FUNC4(ptr);
#undef free
    FUNC5(ptr);
#else
    size_t len = strlen(prefix) + 12; /* room for "/tmp/" and "XXXXXX\0" */
    *filename  = av_malloc(len);
#endif
    /* -----common section-----*/
    if (!*filename) {
        FUNC2(&file_log_ctx, AV_LOG_ERROR, "ff_tempfile: Cannot allocate file name\n");
        return FUNC0(ENOMEM);
    }
#if !HAVE_MKSTEMP
#   ifndef O_BINARY
#       define O_BINARY 0
#   endif
#   ifndef O_EXCL
#       define O_EXCL 0
#   endif
    fd = FUNC7(*filename, O_RDWR | O_BINARY | O_CREAT | O_EXCL, 0600);
#else
    snprintf(*filename, len, "/tmp/%sXXXXXX", prefix);
    fd = mkstemp(*filename);
#if defined(_WIN32) || defined (__ANDROID__) || defined(__DJGPP__)
    if (fd < 0) {
        snprintf(*filename, len, "./%sXXXXXX", prefix);
        fd = mkstemp(*filename);
    }
#endif
#endif
    /* -----common section-----*/
    if (fd < 0) {
        int err = FUNC0(errno);
        FUNC2(&file_log_ctx, AV_LOG_ERROR, "ff_tempfile: Cannot open temporary file %s\n", *filename);
        FUNC1(filename);
        return err;
    }
    return fd; /* success */
}