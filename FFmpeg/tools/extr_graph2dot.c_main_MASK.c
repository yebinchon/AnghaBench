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
struct line {int /*<<< orphan*/  data; struct line* next; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVFilterGraph ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 char FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,size_t) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(int argc, char **argv)
{
    const char *outfilename = NULL;
    const char *infilename  = NULL;
    FILE *outfile           = NULL;
    FILE *infile            = NULL;
    char *graph_string      = NULL;
    AVFilterGraph *graph = FUNC2(sizeof(AVFilterGraph));
    char c;

    FUNC0(AV_LOG_DEBUG);

    while ((c = FUNC9(argc, argv, "hi:o:")) != -1) {
        switch (c) {
        case 'h':
            FUNC15();
            return 0;
        case 'i':
            infilename = optarg;
            break;
        case 'o':
            outfilename = optarg;
            break;
        case '?':
            return 1;
        }
    }

    if (!infilename || !FUNC12(infilename, "-"))
        infilename = "/dev/stdin";
    infile = FUNC7(infilename, "r");
    if (!infile) {
        FUNC8(stderr, "Failed to open input file '%s': %s\n",
                infilename, FUNC13(errno));
        return 1;
    }

    if (!outfilename || !FUNC12(outfilename, "-"))
        outfilename = "/dev/stdout";
    outfile = FUNC7(outfilename, "w");
    if (!outfile) {
        FUNC8(stderr, "Failed to open output file '%s': %s\n",
                outfilename, FUNC13(errno));
        return 1;
    }

    /* read from infile and put it in a buffer */
    {
        int64_t count = 0;
        struct line *line, *last_line, *first_line;
        char *p;
        last_line = first_line = FUNC1(sizeof(struct line));
        if (!last_line) {
            FUNC8(stderr, "Memory allocation failure\n");
            return 1;
        }

        while (FUNC6(last_line->data, sizeof(last_line->data), infile)) {
            struct line *new_line = FUNC1(sizeof(struct line));
            if (!new_line) {
                FUNC8(stderr, "Memory allocation failure\n");
                return 1;
            }
            count += FUNC14(last_line->data);
            last_line->next = new_line;
            last_line       = new_line;
        }
        last_line->next = NULL;

        graph_string = FUNC1(count + 1);
        if (!graph_string) {
            FUNC8(stderr, "Memory allocation failure\n");
            return 1;
        }
        p = graph_string;
        for (line = first_line; line->next; line = line->next) {
            size_t l = FUNC14(line->data);
            FUNC10(p, line->data, l);
            p += l;
        }
        *p = '\0';
    }

    if (FUNC4(graph, graph_string, NULL, NULL, NULL) < 0) {
        FUNC8(stderr, "Failed to parse the graph description\n");
        return 1;
    }

    if (FUNC3(graph, NULL) < 0)
        return 1;

    FUNC11(outfile, graph);
    FUNC5(outfile);

    return 0;
}