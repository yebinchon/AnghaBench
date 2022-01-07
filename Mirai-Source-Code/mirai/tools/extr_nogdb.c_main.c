
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int header ;
struct TYPE_4__ {int e_shoff; int e_shnum; int e_shstrndx; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 TYPE_1__* MAP_FAILED ;
 int MAP_SHARED ;
 int MS_SYNC ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 scalar_t__ mmap (int *,int,int,int ,int,int ) ;
 int msync (int *,int ,int ) ;
 int munmap (TYPE_1__*,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;

int main(int argc, char** argv) {
    int f;
    static Elf32_Ehdr* header;

    printf(".: Elf corrupt :.\n");

    if(argc < 2){
        printf("Usage: %s file", argv[0]);
        return 1;
    }

    if((f = open(argv[1], O_RDWR)) < 0){
        perror("open");
        return 1;
    }


    if((header = (Elf32_Ehdr *) mmap(((void*)0), sizeof(header), PROT_READ | PROT_WRITE, MAP_SHARED, f, 0)) == MAP_FAILED){
        perror("mmap");
        close(f);
        return 1;
    }

    printf("[*] Current header values:\n");
    printf("\te_shoff:%d\n\te_shnum:%d\n\te_shstrndx:%d\n",
            header->e_shoff, header->e_shnum, header->e_shstrndx);

    header->e_shoff = 0xffff;
    header->e_shnum = 0xffff;
    header->e_shstrndx = 0xffff;

    printf("[*] Patched header values:\n");
    printf("\te_shoff:%d\n\te_shnum:%d\n\te_shstrndx:%d\n",
            header->e_shoff, header->e_shnum, header->e_shstrndx);

    if(msync(((void*)0), 0, MS_SYNC) == -1){
        perror("msync");
        close(f);
        return 1;
    }

    close(f);
    munmap(header, 0);
    printf("You should no more be able to run \"%s\" inside GDB\n", argv[1]);
    return 0;
}
