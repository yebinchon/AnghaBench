
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repeat; scalar_t__ stdinarg; } ;


 int cliSendCommand (int,char**,int ) ;
 TYPE_1__ config ;
 char* readArgFromStdin () ;
 char** zrealloc (char**,int) ;

__attribute__((used)) static int noninteractive(int argc, char **argv) {
    int retval = 0;
    if (config.stdinarg) {
        argv = zrealloc(argv, (argc+1)*sizeof(char*));
        argv[argc] = readArgFromStdin();
        retval = cliSendCommand(argc+1, argv, config.repeat);
    } else {

        retval = cliSendCommand(argc, argv, config.repeat);
    }
    return retval;
}
