
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ide_device {int cylinders; int heads; int sectors; char* drive_serial_str; int mult_sectors; int nb_sectors; scalar_t__ is_cdrom; scalar_t__ is_cf; int * io_buffer; } ;


 int CAP_LBA_SUPPORTED ;
 int GCBI_12BYTE_PACKETS ;
 int GCBI_50US_TILL_DRQ ;
 int GCBI_CDROM_DEVICE ;
 int GCBI_FIXED_DRIVE ;
 int GCBI_HAS_PACKET_FEAT_SET ;
 int GCBI_HAS_REMOVABLE_MEDIA ;
 int LE16 (int *,int,int) ;
 int MAX_MULT_SECTORS ;
 char* PACKAGE_VERSION ;
 int memset (int *,int ,int) ;
 int padstr (int *,char*,int) ;

__attribute__((used)) static void ide_identify(struct ide_device *s) {
    unsigned int oldsize;
    uint8_t *p = s->io_buffer;
    memset(p, 0, 512);

    LE16(p, 0, GCBI_FIXED_DRIVE);
    LE16(p, 1, s->cylinders);
    LE16(p, 3, s->heads);




    LE16(p, 6, s->sectors);

    padstr(p+10*2, s->drive_serial_str, 20);





    LE16(p, 22, 4);

    padstr(p+23*2, PACKAGE_VERSION, 8);
    padstr(p+27*2, "ATARI800 HARDDISK", 40);

    if (MAX_MULT_SECTORS > 1)
        LE16(p, 47, 0x8000 | MAX_MULT_SECTORS);

    LE16(p, 48, 0);
    LE16(p, 49, CAP_LBA_SUPPORTED);
    LE16(p, 51, 0x0200);



    LE16(p, 53, 1 );
    LE16(p, 54, s->cylinders);
    LE16(p, 55, s->heads);
    LE16(p, 56, s->sectors);
    oldsize = s->cylinders * s->heads * s->sectors;
    LE16(p, 57, oldsize);
    LE16(p, 58, oldsize >> 16);
    if (s->mult_sectors)
        LE16(p, 59, 0x100 | s->mult_sectors);

    LE16(p, 60, s->nb_sectors);
    LE16(p, 61, s->nb_sectors >> 16);

    if (s->is_cf) {
        LE16(p, 0, 0x848a);
        padstr(p+27*2, "ATARI800 MICRODRIVE", 40);
        LE16(p, 49, CAP_LBA_SUPPORTED);
        LE16(p, 51, 2);
        LE16(p, 52, 1);
    }

    if (s->is_cdrom) {
        LE16(p, 0, GCBI_HAS_PACKET_FEAT_SET |
                   GCBI_CDROM_DEVICE |
                   GCBI_HAS_REMOVABLE_MEDIA |
                   GCBI_50US_TILL_DRQ |
                   GCBI_12BYTE_PACKETS);
        padstr(p+27*2, "ATARI800 DVD-ROM", 40);
        LE16(p, 49, CAP_LBA_SUPPORTED);
    }
}
