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
typedef  enum AVEscapeMode { ____Placeholder_AVEscapeMode } AVEscapeMode ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int AV_ESCAPE_FLAG_STRICT ; 
 int AV_ESCAPE_FLAG_WHITESPACE ; 
 int AV_ESCAPE_MODE_AUTO ; 
 int AV_ESCAPE_MODE_BACKSLASH ; 
 int AV_ESCAPE_MODE_QUOTE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int EOF ; 
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char**,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int FUNC10 (int,char**,char*) ; 
 char const* optarg ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 long FUNC13 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(int argc, char **argv)
{
    AVBPrint src;
    char *src_buf, *dst_buf;
    const char *outfilename = NULL, *infilename = NULL;
    FILE *outfile = NULL, *infile = NULL;
    const char *prompt = "=> ";
    enum AVEscapeMode escape_mode = AV_ESCAPE_MODE_AUTO;
    int escape_flags = 0;
    int level = 1;
    int echo = 0;
    char *special_chars = NULL;
    int c;

    while ((c = FUNC10(argc, argv, "ef:hi:l:o:m:p:s:")) != -1) {
        switch (c) {
        case 'e':
            echo = 1;
            break;
        case 'h':
            FUNC14();
            return 0;
        case 'i':
            infilename = optarg;
            break;
        case 'f':
            if      (!FUNC11(optarg, "whitespace")) escape_flags |= AV_ESCAPE_FLAG_WHITESPACE;
            else if (!FUNC11(optarg, "strict"))     escape_flags |= AV_ESCAPE_FLAG_STRICT;
            else {
                FUNC6(NULL, AV_LOG_ERROR,
                       "Invalid value '%s' for option -f, "
                       "valid arguments are 'whitespace', and 'strict'\n", optarg);
                return 1;
            }
            break;
        case 'l':
        {
            char *tail;
            long int li = FUNC13(optarg, &tail, 10);
            if (*tail || li > INT_MAX || li < 0) {
                FUNC6(NULL, AV_LOG_ERROR,
                        "Invalid value '%s' for option -l, argument must be a non negative integer\n",
                        optarg);
                return 1;
            }
            level = li;
            break;
        }
        case 'm':
            if      (!FUNC11(optarg, "auto"))      escape_mode = AV_ESCAPE_MODE_AUTO;
            else if (!FUNC11(optarg, "backslash")) escape_mode = AV_ESCAPE_MODE_BACKSLASH;
            else if (!FUNC11(optarg, "quote"))     escape_mode = AV_ESCAPE_MODE_QUOTE;
            else {
                FUNC6(NULL, AV_LOG_ERROR,
                       "Invalid value '%s' for option -m, "
                       "valid arguments are 'backslash', and 'quote'\n", optarg);
                return 1;
            }
            break;
        case 'o':
            outfilename = optarg;
            break;
        case 'p':
            prompt = optarg;
            break;
        case 's':
            special_chars = optarg;
            break;
        case '?':
            return 1;
        }
    }

    if (!infilename || !FUNC11(infilename, "-")) {
        infilename = "stdin";
        infile = stdin;
    } else {
        infile = FUNC8(infilename, "r");
    }
    if (!infile) {
        FUNC6(NULL, AV_LOG_ERROR, "Impossible to open input file '%s': %s\n", infilename, FUNC12(errno));
        return 1;
    }

    if (!outfilename || !FUNC11(outfilename, "-")) {
        outfilename = "stdout";
        outfile = stdout;
    } else {
        outfile = FUNC8(outfilename, "w");
    }
    if (!outfile) {
        FUNC6(NULL, AV_LOG_ERROR, "Impossible to open output file '%s': %s\n", outfilename, FUNC12(errno));
        return 1;
    }

    /* grab the input and store it in src */
    FUNC2(&src, 1, AV_BPRINT_SIZE_UNLIMITED);
    while ((c = FUNC7(infile)) != EOF)
        FUNC0(&src, c, 1);
    FUNC0(&src, 0, 1);

    if (!FUNC3(&src)) {
        FUNC6(NULL, AV_LOG_ERROR, "Could not allocate a buffer for the source string\n");
        FUNC1(&src, NULL);
        return 1;
    }
    FUNC1(&src, &src_buf);

    if (echo)
        FUNC9(outfile, "%s", src_buf);

    /* escape */
    dst_buf = src_buf;
    while (level--) {
        if (FUNC4(&dst_buf, src_buf, special_chars, escape_mode, escape_flags) < 0) {
            FUNC6(NULL, AV_LOG_ERROR, "Could not escape string\n");
            return 1;
        }
        FUNC5(src_buf);
        src_buf = dst_buf;
    }

    FUNC9(outfile, "%s%s", prompt, dst_buf);
    FUNC5(dst_buf);
    return 0;
}