
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* sds ;
typedef int buf ;
struct TYPE_2__ {char* eval; int repeat; } ;
typedef int FILE ;


 int cliSendCommand (int,char**,int ) ;
 TYPE_1__ config ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 char* sdscatlen (char*,char*,size_t) ;
 char* sdscatprintf (char*,char*,int) ;
 char* sdsempty () ;
 char* sdsnew (char*) ;
 int stderr ;
 char* strerror (int ) ;
 char** zmalloc (int) ;

__attribute__((used)) static int evalMode(int argc, char **argv) {
    sds script = sdsempty();
    FILE *fp;
    char buf[1024];
    size_t nread;
    char **argv2;
    int j, got_comma = 0, keys = 0;


    fp = fopen(config.eval,"r");
    if (!fp) {
        fprintf(stderr,
            "Can't open file '%s': %s\n", config.eval, strerror(errno));
        exit(1);
    }
    while((nread = fread(buf,1,sizeof(buf),fp)) != 0) {
        script = sdscatlen(script,buf,nread);
    }
    fclose(fp);


    argv2 = zmalloc(sizeof(sds)*(argc+3));
    argv2[0] = sdsnew("EVAL");
    argv2[1] = script;
    for (j = 0; j < argc; j++) {
        if (!got_comma && argv[j][0] == ',' && argv[j][1] == 0) {
            got_comma = 1;
            continue;
        }
        argv2[j+3-got_comma] = sdsnew(argv[j]);
        if (!got_comma) keys++;
    }
    argv2[2] = sdscatprintf(sdsempty(),"%d",keys);


    return cliSendCommand(argc+3-got_comma, argv2, config.repeat);
}
