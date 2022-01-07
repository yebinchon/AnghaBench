
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOKEN_LIST_SIZE ;
 int free (char*) ;
 int parse_args (int,char**) ;
 int parse_file (char*,int*,char**) ;
 int set_option_defaults () ;

void do_config(char *file)
{
    extern int __crt0_argc;
    extern char **__crt0_argv;


    int i, argc;
    char *argv[TOKEN_LIST_SIZE];

    set_option_defaults();
    for(i = 0; i < TOKEN_LIST_SIZE; i += 1) argv[i] = ((void*)0);


    if(file) parse_file(file, &argc, argv);


    parse_args(argc, argv);


    for(i = 0; i < argc; i += 1) if(argv[argc]) free (argv[argc]);


    parse_args(__crt0_argc, __crt0_argv);
}
