
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stat {int st_size; } ;
typedef char gchar ;
typedef int FILE ;


 int G_FILE_TEST_IS_REGULAR ;
 int SEEK_SET ;
 int WEXITSTATUS (int ) ;
 int appimage_get_elf_section_offset_and_length (char*,char*,unsigned long*,unsigned long*) ;
 char* basename (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (int*,unsigned long,int,int *) ;
 int free (int*) ;
 int fseek (int *,unsigned long,int ) ;
 int g_file_test (char*,int ) ;
 char* g_find_program_in_path (char*) ;
 char* g_strconcat (char*,char*,int *) ;
 int* malloc (unsigned long) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int printf (char*,...) ;
 char* segment_name ;
 int sha256_file (char*,char*,unsigned long,unsigned long) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int unlink (char*) ;

int main(int argc,char **argv) {
    if(argc < 2){
        fprintf(stderr, "Usage: %s Signed.AppImage\n", argv[0]);
        exit(1);
    }

    char *filename = argv[1];

    unsigned long skip_offset = 0;
    unsigned long skip_length = 0;

    if (!appimage_get_elf_section_offset_and_length(filename, ".sha256_sig", &skip_offset, &skip_length)) {
        fprintf(stderr, "Failed to read .sha256_sig section");
        exit(1);
    }

    if(skip_length > 0) {
        fprintf(stderr, "Skipping ELF section %s with offset %lu, length %lu\n", segment_name, skip_offset, skip_length);
    } else {
        fprintf(stderr, "ELF section %s not found, is the file signed?\n", segment_name);
        exit(1);
    }

    char *digestfile;
    digestfile = g_strconcat("/tmp/", basename(g_strconcat(filename, ".digest", ((void*)0))), ((void*)0));
    char *signaturefile;
    signaturefile = g_strconcat("/tmp/", basename(g_strconcat(filename, ".sig", ((void*)0))), ((void*)0));

    uint8_t *data = malloc(skip_length);
    unsigned long k;
    FILE* fd = fopen(filename, "r");
    fseek(fd, skip_offset, SEEK_SET);
    fread(data, skip_length, sizeof(uint8_t), fd);
    fclose(fd);
    FILE *fpdst2 = fopen(signaturefile, "w");
    if (fpdst2 == ((void*)0)) {
        fprintf(stderr, "Not able to open the signature file for writing, aborting");
        exit(1);
    }
    for (k = 0; k < skip_length; k++) {
        fprintf(fpdst2, "%c", data[k]);
    }
    fclose(fpdst2);
    free(data);

    struct stat st;
    stat(filename, &st);
    int size = st.st_size;
    if(size < skip_offset+skip_length){
        fprintf(stderr, "offset+length cannot be less than the file size\n");
        exit(1);
    }

    static char buffer[65];
    sha256_file(filename, buffer, skip_offset, skip_length);
    printf("%s\n", buffer);


    FILE *f = fopen(digestfile, "w");
    if (f == ((void*)0)){
        printf("Error opening digestfile\n");
        exit(1);
    }
    fprintf(f, "%s", buffer);
    fclose(f);
    if (! g_file_test(digestfile, G_FILE_TEST_IS_REGULAR)) {
        printf("Error writing digestfile\n");
        exit(1);
    }

    char command[1024];
    gchar *gpg2_path = g_find_program_in_path ("gpg2");
    sprintf (command, "%s --verify %s %s", gpg2_path, signaturefile, digestfile);
    fprintf (stderr, "%s\n", command);
    FILE *fp = popen(command, "r");
    if (fp == ((void*)0))
        fprintf(stderr, "gpg2 command did not succeed");
    int exitcode = WEXITSTATUS(pclose(fp));
    unlink(digestfile);
    unlink(signaturefile);
    return exitcode;
}
