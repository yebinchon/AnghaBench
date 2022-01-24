#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ide_device {int cylinders; int heads; int sectors; char* drive_serial_str; int mult_sectors; int nb_sectors; scalar_t__ is_cdrom; scalar_t__ is_cf; int /*<<< orphan*/ * io_buffer; } ;

/* Variables and functions */
 int CAP_LBA_SUPPORTED ; 
 int GCBI_12BYTE_PACKETS ; 
 int GCBI_50US_TILL_DRQ ; 
 int GCBI_CDROM_DEVICE ; 
 int GCBI_FIXED_DRIVE ; 
 int GCBI_HAS_PACKET_FEAT_SET ; 
 int GCBI_HAS_REMOVABLE_MEDIA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int MAX_MULT_SECTORS ; 
 char* PACKAGE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(struct ide_device *s) {
    unsigned int oldsize;
    uint8_t *p = s->io_buffer;
    FUNC1(p, 0, 512);

    FUNC0(p, 0, GCBI_FIXED_DRIVE);
    FUNC0(p, 1, s->cylinders);
    FUNC0(p, 3, s->heads);
/*
    LE16(p, 4, 512 * s->sectors);   // bytes per track, obsolete ATA2
    LE16(p, 5, 512);                // bytes per sector, obsolete ATA2
*/
    FUNC0(p, 6, s->sectors);         /* sectors per track */

    FUNC2(p+10*2, s->drive_serial_str, 20);

/*
    LE16(p, 20, 3);                 // buffer type, obsolete ATA2
    LE16(p, 21, 16);                // cache size in sectors, obsolete ATA2
*/
    FUNC0(p, 22, 4);                 /* number of ECC bytes */

    FUNC2(p+23*2, PACKAGE_VERSION, 8);
    FUNC2(p+27*2, "ATARI800 HARDDISK", 40);

    if (MAX_MULT_SECTORS > 1)
        FUNC0(p, 47, 0x8000 | MAX_MULT_SECTORS);

    FUNC0(p, 48, 0);                 /* cannot perform double word I/O */
    FUNC0(p, 49, CAP_LBA_SUPPORTED);
    FUNC0(p, 51, 0x0200);            /* PIO transfer cycle */
/*
    LE16(p, 52, 0x0200);            // DMA transfer cycle, obsolete ATA3
*/
    FUNC0(p, 53, 1/*+2+4*/);         /* words 54-58[,64-70,88] are valid */
    FUNC0(p, 54, s->cylinders);
    FUNC0(p, 55, s->heads);
    FUNC0(p, 56, s->sectors);
    oldsize = s->cylinders * s->heads * s->sectors;
    FUNC0(p, 57, oldsize);
    FUNC0(p, 58, oldsize >> 16);
    if (s->mult_sectors)
        FUNC0(p, 59, 0x100 | s->mult_sectors);

    FUNC0(p, 60, s->nb_sectors);     /* total number of LBA sectors */
    FUNC0(p, 61, s->nb_sectors >> 16);

    if (s->is_cf) {
        FUNC0(p, 0, 0x848a);         /* CF Storage Card signature */
        FUNC2(p+27*2, "ATARI800 MICRODRIVE", 40);
        FUNC0(p, 49, CAP_LBA_SUPPORTED);
        FUNC0(p, 51, 2);
        FUNC0(p, 52, 1);
    }

    if (s->is_cdrom) {
        FUNC0(p, 0, GCBI_HAS_PACKET_FEAT_SET |
                   GCBI_CDROM_DEVICE        |
                   GCBI_HAS_REMOVABLE_MEDIA |
                   GCBI_50US_TILL_DRQ       |
                   GCBI_12BYTE_PACKETS);
        FUNC2(p+27*2, "ATARI800 DVD-ROM", 40);
        FUNC0(p, 49, CAP_LBA_SUPPORTED);
    }
}