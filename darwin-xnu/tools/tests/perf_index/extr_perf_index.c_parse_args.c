
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* my_name; char* test_name; int * test_argv; scalar_t__ test_argc; int length; int num_threads; } ;
typedef TYPE_1__ parsed_args_t ;


 int atoi (char*) ;
 int strtoll (char*,int *,int) ;

int parse_args(int argc, char** argv, parsed_args_t* parsed_args) {
    if(argc != 4) {
        return -1;
    }

    parsed_args->my_name = argv[0];
    parsed_args->test_name = argv[1];
    parsed_args->num_threads = atoi(argv[2]);
    parsed_args->length = strtoll(argv[3], ((void*)0), 10);
    parsed_args->test_argc = 0;
    parsed_args->test_argv = ((void*)0);
    return 0;
}
