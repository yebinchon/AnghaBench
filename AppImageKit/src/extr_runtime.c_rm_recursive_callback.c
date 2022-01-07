
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct FTW {int dummy; } ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int remove (char const*) ;
 int rmdir (char const*) ;
 int stderr ;
 char* strerror (int ) ;

int rm_recursive_callback(const char* path, const struct stat* stat, const int type, struct FTW* ftw) {
    (void) stat;
    (void) ftw;

    switch (type) {
        case 130:
        case 133:
            fprintf(stderr, "%s: ftw error: %s\n",
                path, strerror(errno));
            return 1;

        case 134:

            break;

        case 131:
        case 129:
        case 128:
            if (remove(path) != 0) {
                fprintf(stderr, "Failed to remove %s: %s\n", path, strerror(errno));
                return 0;
            }
            break;


        case 132:
            if (rmdir(path) != 0) {
                fprintf(stderr, "Failed to remove directory %s: %s\n", path, strerror(errno));
                return 0;
            }
            break;

        default:
            fprintf(stderr, "Unexpected fts_info\n");
            return 1;
    }

    return 0;
}
