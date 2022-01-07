
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVEscapeMode { ____Placeholder_AVEscapeMode } AVEscapeMode ;
typedef int FILE ;
typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_ESCAPE_FLAG_STRICT ;
 int AV_ESCAPE_FLAG_WHITESPACE ;
 int AV_ESCAPE_MODE_AUTO ;
 int AV_ESCAPE_MODE_BACKSLASH ;
 int AV_ESCAPE_MODE_QUOTE ;
 int AV_LOG_ERROR ;
 int EOF ;
 long INT_MAX ;
 int av_bprint_chars (int *,int,int) ;
 int av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int,int ) ;
 int av_bprint_is_complete (int *) ;
 scalar_t__ av_escape (char**,char*,char*,int,int) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*,...) ;
 int errno ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char const*,...) ;
 int getopt (int,char**,char*) ;
 char const* optarg ;
 int * stdin ;
 int * stdout ;
 int strcmp (char const*,char*) ;
 int strerror (int ) ;
 long strtol (char const*,char**,int) ;
 int usage () ;

int main(int argc, char **argv)
{
    AVBPrint src;
    char *src_buf, *dst_buf;
    const char *outfilename = ((void*)0), *infilename = ((void*)0);
    FILE *outfile = ((void*)0), *infile = ((void*)0);
    const char *prompt = "=> ";
    enum AVEscapeMode escape_mode = AV_ESCAPE_MODE_AUTO;
    int escape_flags = 0;
    int level = 1;
    int echo = 0;
    char *special_chars = ((void*)0);
    int c;

    while ((c = getopt(argc, argv, "ef:hi:l:o:m:p:s:")) != -1) {
        switch (c) {
        case 'e':
            echo = 1;
            break;
        case 'h':
            usage();
            return 0;
        case 'i':
            infilename = optarg;
            break;
        case 'f':
            if (!strcmp(optarg, "whitespace")) escape_flags |= AV_ESCAPE_FLAG_WHITESPACE;
            else if (!strcmp(optarg, "strict")) escape_flags |= AV_ESCAPE_FLAG_STRICT;
            else {
                av_log(((void*)0), AV_LOG_ERROR,
                       "Invalid value '%s' for option -f, "
                       "valid arguments are 'whitespace', and 'strict'\n", optarg);
                return 1;
            }
            break;
        case 'l':
        {
            char *tail;
            long int li = strtol(optarg, &tail, 10);
            if (*tail || li > INT_MAX || li < 0) {
                av_log(((void*)0), AV_LOG_ERROR,
                        "Invalid value '%s' for option -l, argument must be a non negative integer\n",
                        optarg);
                return 1;
            }
            level = li;
            break;
        }
        case 'm':
            if (!strcmp(optarg, "auto")) escape_mode = AV_ESCAPE_MODE_AUTO;
            else if (!strcmp(optarg, "backslash")) escape_mode = AV_ESCAPE_MODE_BACKSLASH;
            else if (!strcmp(optarg, "quote")) escape_mode = AV_ESCAPE_MODE_QUOTE;
            else {
                av_log(((void*)0), AV_LOG_ERROR,
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

    if (!infilename || !strcmp(infilename, "-")) {
        infilename = "stdin";
        infile = stdin;
    } else {
        infile = fopen(infilename, "r");
    }
    if (!infile) {
        av_log(((void*)0), AV_LOG_ERROR, "Impossible to open input file '%s': %s\n", infilename, strerror(errno));
        return 1;
    }

    if (!outfilename || !strcmp(outfilename, "-")) {
        outfilename = "stdout";
        outfile = stdout;
    } else {
        outfile = fopen(outfilename, "w");
    }
    if (!outfile) {
        av_log(((void*)0), AV_LOG_ERROR, "Impossible to open output file '%s': %s\n", outfilename, strerror(errno));
        return 1;
    }


    av_bprint_init(&src, 1, AV_BPRINT_SIZE_UNLIMITED);
    while ((c = fgetc(infile)) != EOF)
        av_bprint_chars(&src, c, 1);
    av_bprint_chars(&src, 0, 1);

    if (!av_bprint_is_complete(&src)) {
        av_log(((void*)0), AV_LOG_ERROR, "Could not allocate a buffer for the source string\n");
        av_bprint_finalize(&src, ((void*)0));
        return 1;
    }
    av_bprint_finalize(&src, &src_buf);

    if (echo)
        fprintf(outfile, "%s", src_buf);


    dst_buf = src_buf;
    while (level--) {
        if (av_escape(&dst_buf, src_buf, special_chars, escape_mode, escape_flags) < 0) {
            av_log(((void*)0), AV_LOG_ERROR, "Could not escape string\n");
            return 1;
        }
        av_free(src_buf);
        src_buf = dst_buf;
    }

    fprintf(outfile, "%s%s", prompt, dst_buf);
    av_free(dst_buf);
    return 0;
}
