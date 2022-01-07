
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int gchar ;
typedef int FILE ;


 int SEEK_SET ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (int const*,char*) ;
 int fseek (int *,int,int ) ;

int16_t read_elf_e_machine_field(const gchar* file_path) {
    int16_t e_machine = 0x00;
    FILE* file = 0;
    file = fopen(file_path, "rb");
    if (file) {
        fseek(file, 0x12, SEEK_SET);
        fgets((char*) (&e_machine), 0x02, file);
        fclose(file);
    }

    return e_machine;
}
