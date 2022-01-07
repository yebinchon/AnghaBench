
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disque_stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;
typedef int buf ;
typedef int FILE ;


 int disque_fstat (int ,struct disque_stat*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int ) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int ftruncate (int ,scalar_t__) ;
 int printf (char*,...) ;
 scalar_t__ process (int *) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

int main(int argc, char **argv) {
    char *filename;
    int fix = 0;

    if (argc < 2) {
        printf("Usage: %s [--fix] <file.aof>\n", argv[0]);
        exit(1);
    } else if (argc == 2) {
        filename = argv[1];
    } else if (argc == 3) {
        if (strcmp(argv[1],"--fix") != 0) {
            printf("Invalid argument: %s\n", argv[1]);
            exit(1);
        }
        filename = argv[2];
        fix = 1;
    } else {
        printf("Invalid arguments\n");
        exit(1);
    }

    FILE *fp = fopen(filename,"r+");
    if (fp == ((void*)0)) {
        printf("Cannot open file: %s\n", filename);
        exit(1);
    }

    struct disque_stat sb;
    if (disque_fstat(fileno(fp),&sb) == -1) {
        printf("Cannot stat file: %s\n", filename);
        exit(1);
    }

    off_t size = sb.st_size;
    if (size == 0) {
        printf("Empty file: %s\n", filename);
        exit(1);
    }

    off_t pos = process(fp);
    off_t diff = size-pos;
    printf("AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\n",
        (long long) size, (long long) pos, (long long) diff);
    if (diff > 0) {
        if (fix) {
            char buf[2];
            printf("This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\n",(long long)size,(long long)diff,(long long)pos);
            printf("Continue? [y/N]: ");
            if (fgets(buf,sizeof(buf),stdin) == ((void*)0) ||
                strncasecmp(buf,"y",1) != 0) {
                    printf("Aborting...\n");
                    exit(1);
            }
            if (ftruncate(fileno(fp), pos) == -1) {
                printf("Failed to truncate AOF\n");
                exit(1);
            } else {
                printf("Successfully truncated AOF\n");
            }
        } else {
            printf("AOF is not valid\n");
            exit(1);
        }
    } else {
        printf("AOF is valid\n");
    }

    fclose(fp);
    return 0;
}
