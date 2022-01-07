
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int FILE ;


 int CONFIG_MAX_LINE ;
 int LL_WARNING ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int loadServerConfigFromString (int ) ;
 int sdscat (int ,char*) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int serverLog (int ,char*,char*) ;
 int * stdin ;

void loadServerConfig(char *filename, char *options) {
    sds config = sdsempty();
    char buf[CONFIG_MAX_LINE+1];


    if (filename) {
        FILE *fp;

        if (filename[0] == '-' && filename[1] == '\0') {
            fp = stdin;
        } else {
            if ((fp = fopen(filename,"r")) == ((void*)0)) {
                serverLog(LL_WARNING,
                    "Fatal error, can't open config file '%s'", filename);
                exit(1);
            }
        }
        while(fgets(buf,CONFIG_MAX_LINE+1,fp) != ((void*)0))
            config = sdscat(config,buf);
        if (fp != stdin) fclose(fp);
    }

    if (options) {
        config = sdscat(config,"\n");
        config = sdscat(config,options);
    }
    loadServerConfigFromString(config);
    sdsfree(config);
}
