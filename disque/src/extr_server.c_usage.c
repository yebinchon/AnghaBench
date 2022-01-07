
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage(void) {
    fprintf(stderr,"Usage: ./disque-server [/path/to/disque.conf] [options]\n");
    fprintf(stderr,"       ./disque-server - (read config from stdin)\n");
    fprintf(stderr,"       ./disque-server -v or --version\n");
    fprintf(stderr,"       ./disque-server -h or --help\n");
    fprintf(stderr,"       ./disque-server --test-memory <megabytes>\n\n");
    fprintf(stderr,"Examples:\n");
    fprintf(stderr,"       ./disque-server (run the server with default conf)\n");
    fprintf(stderr,"       ./disque-server /etc/disque/7711.conf\n");
    fprintf(stderr,"       ./disque-server --port 7777\n");
    fprintf(stderr,"       ./disque-server --port 7777 --slaveof 127.0.0.1 8888\n");
    fprintf(stderr,"       ./disque-server /etc/mydisque.conf --loglevel verbose\n\n");
    exit(1);
}
