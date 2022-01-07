
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctmainbench ;
 int ctmaintest ;
 int readtokens () ;
 int report (int ) ;
 int runallbench (int ) ;
 int runalltest (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int writetokens (int) ;

int
main(int argc, char **argv)
{
    int n = readtokens();
    runalltest(ctmaintest, n);
    writetokens(n);
    int code = report(ctmaintest);
    if (code != 0) {
        return code;
    }
    if (argc == 2 && strcmp(argv[1], "-b") == 0) {
        runallbench(ctmainbench);
    }
    return 0;
}
