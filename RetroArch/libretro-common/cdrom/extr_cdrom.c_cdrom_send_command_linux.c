
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char interface_id; size_t cmd_len; unsigned char* cmdp; size_t dxfer_len; unsigned char* sbp; size_t mx_sb_len; int timeout; int info; void* dxferp; int dxfer_direction; int member_0; } ;
typedef TYPE_1__ sg_io_hdr_t ;
struct TYPE_6__ {int fp; } ;
typedef TYPE_2__ libretro_vfs_implementation_file ;
typedef int CDROM_CMD_Direction ;





 int SG_DXFER_FROM_DEV ;
 int SG_DXFER_NONE ;
 int SG_DXFER_TO_DEV ;
 int SG_INFO_CHECK ;
 int SG_IO ;
 int fileno (int ) ;
 int ioctl (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int cdrom_send_command_linux(const libretro_vfs_implementation_file *stream, CDROM_CMD_Direction dir, void *buf, size_t len, unsigned char *cmd, size_t cmd_len, unsigned char *sense, size_t sense_len)
{
   sg_io_hdr_t sgio = {0};
   int rv;

   switch (dir)
   {
      case 130:
         sgio.dxfer_direction = SG_DXFER_FROM_DEV;
         break;
      case 128:
         sgio.dxfer_direction = SG_DXFER_TO_DEV;
         break;
      case 129:
      default:
         sgio.dxfer_direction = SG_DXFER_NONE;
         break;
   }

   sgio.interface_id = 'S';
   sgio.cmd_len = cmd_len;
   sgio.cmdp = cmd;
   sgio.dxferp = buf;
   sgio.dxfer_len = len;
   sgio.sbp = sense;
   sgio.mx_sb_len = sense_len;
   sgio.timeout = 5000;

   rv = ioctl(fileno(stream->fp), SG_IO, &sgio);

   if (rv == -1 || sgio.info & SG_INFO_CHECK)
      return 1;

   return 0;
}
