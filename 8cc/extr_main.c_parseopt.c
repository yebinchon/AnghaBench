
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_include_path (int ) ;
 int buf_printf (int ,char*,int ) ;
 int cppdefs ;
 int cpponly ;
 int dontlink ;
 int dumpasm ;
 int dumpast ;
 int enable_warning ;
 int error (char*) ;
 int getopt (int,char**,char*) ;
 char* infile ;
 int make_buffer () ;
 int optarg ;
 int optind ;
 int outfile ;
 int parse_f_arg (int ) ;
 int parse_m_arg (int ) ;
 int parse_warnings_arg (int ) ;
 char* strchr (int ,char) ;
 int usage (int) ;

__attribute__((used)) static void parseopt(int argc, char **argv) {
    cppdefs = make_buffer();
    for (;;) {
        int opt = getopt(argc, argv, "I:ED:O:SU:W:acd:f:gm:o:hw");
        if (opt == -1)
            break;
        switch (opt) {
        case 'I': add_include_path(optarg); break;
        case 'E': cpponly = 1; break;
        case 'D': {
            char *p = strchr(optarg, '=');
            if (p)
                *p = ' ';
            buf_printf(cppdefs, "#define %s\n", optarg);
            break;
        }
        case 'O': break;
        case 'S': dumpasm = 1; break;
        case 'U':
            buf_printf(cppdefs, "#undef %s\n", optarg);
            break;
        case 'W': parse_warnings_arg(optarg); break;
        case 'c': dontlink = 1; break;
        case 'f': parse_f_arg(optarg); break;
        case 'm': parse_m_arg(optarg); break;
        case 'g': break;
        case 'o': outfile = optarg; break;
        case 'w': enable_warning = 0; break;
        case 'h':
            usage(0);
        default:
            usage(1);
        }
    }
    if (optind != argc - 1)
        usage(1);

    if (!dumpast && !cpponly && !dumpasm && !dontlink)
        error("One of -a, -c, -E or -S must be specified");
    infile = argv[optind];
}
