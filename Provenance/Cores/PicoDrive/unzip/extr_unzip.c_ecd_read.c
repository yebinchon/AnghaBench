
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int ecd_length; char* ecd; int fp; } ;
typedef TYPE_1__ ZIP ;


 int SEEK_SET ;
 scalar_t__ ecd_find_sig (char*,int,int*) ;
 int fread (char*,int,int,int ) ;
 int free (char*) ;
 scalar_t__ fseek (int ,int,int ) ;
 int logerror (char*,int) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int ecd_read(ZIP* zip) {
 char* buf;
 int buf_length = 1024;

 while (1) {
  int offset;

  if (buf_length > zip->length)
   buf_length = zip->length;

  if (fseek(zip->fp, zip->length - buf_length, SEEK_SET) != 0) {
   return -1;
  }


  buf = (char*)malloc( buf_length );
  if (!buf) {
   return -1;
  }

  if (fread( buf, buf_length, 1, zip->fp ) != 1) {
   free(buf);
   return -1;
  }

  if (ecd_find_sig(buf, buf_length, &offset)) {
   zip->ecd_length = buf_length - offset;

   zip->ecd = (char*)malloc( zip->ecd_length );
   if (!zip->ecd) {
    free(buf);
    return -1;
   }

   memcpy(zip->ecd, buf + offset, zip->ecd_length);

   free(buf);
   return 0;
  }

  free(buf);

  if (buf_length < zip->length) {

   buf_length = 2*buf_length;

   logerror("Retry reading of zip ecd for %d bytes\n",buf_length);

  } else {
   return -1;
  }
 }
}
