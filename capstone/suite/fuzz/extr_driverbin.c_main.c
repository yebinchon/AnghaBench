
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int FILE ;
typedef int DIR ;


 scalar_t__ DT_REG ;
 int LLVMFuzzerTestOneInput (int *,size_t) ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ chdir (char*) ;
 int closedir (int *) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (int *,size_t,int,int *) ;
 scalar_t__ fseek (int *,long,int ) ;
 size_t ftell (int *) ;
 int * opendir (char*) ;
 int printf (char*) ;
 struct dirent* readdir (int *) ;

int main(int argc, char** argv)
{
    FILE * fp;
    uint8_t Data[0x1000];
    size_t Size;
    DIR *d;
    struct dirent *dir;
    int r = 0;

    if (argc != 2) {
        return 1;
    }

    d = opendir(argv[1]);
    if (d == ((void*)0)) {
        printf("Invalid directory\n");
        return 2;
    }
    if (chdir(argv[1]) != 0) {
        closedir(d);
        printf("Invalid directory\n");
        return 2;
    }

    while((dir = readdir(d)) != ((void*)0)) {

        if (dir->d_type != DT_REG) {
            continue;
        }

        fp = fopen(dir->d_name, "rb");
        if (fp == ((void*)0)) {
            r = 3;
            break;
        }
        if (fseek(fp, 0L, SEEK_END) != 0) {
            fclose(fp);
            r = 4;
            break;
        }
        Size = ftell(fp);
        if (Size == (size_t) -1) {
            fclose(fp);
            r = 5;
            break;
        } else if (Size > 0x1000) {
            fclose(fp);
            continue;
        }
        if (fseek(fp, 0L, SEEK_SET) != 0) {
            fclose(fp);
            r = 7;
            break;
        }
        if (fread(Data, Size, 1, fp) != 1) {
            fclose(fp);
            r = 8;
            break;
        }


        LLVMFuzzerTestOneInput(Data, Size);
        fclose(fp);
    }
    closedir(d);
    return r;
}
