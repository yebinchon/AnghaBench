
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buffer ;
typedef int FILE ;


 int LOG_STD (char*,...) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fwrite (int*,int,int,int *) ;
 int vc_tv_hdmi_ddc_read (size_t,int,int*) ;

__attribute__((used)) static int dump_edid( const char *filename )
{
   uint8_t buffer[128];
   size_t written = 0, offset = 0;
   int i, extensions = 0;
   FILE *fp = ((void*)0);
   int siz = vc_tv_hdmi_ddc_read(offset, sizeof (buffer), buffer);
   offset += sizeof( buffer);

   if (siz == sizeof(buffer) && (fp = fopen(filename, "wb")) != ((void*)0)) {
      written += fwrite(buffer, 1, sizeof buffer, fp);
      extensions = buffer[0x7e];
      for(i = 0; i < extensions; i++, offset += sizeof( buffer)) {
         siz = vc_tv_hdmi_ddc_read(offset, sizeof( buffer), buffer);
         if(siz == sizeof(buffer)) {
            written += fwrite(buffer, 1, sizeof (buffer), fp);
         } else {
            break;
         }
      }
   }
   if (fp)
      fclose(fp);
   if(written) {
      LOG_STD( "Written %d bytes to %s", written, filename);
   } else {
      LOG_STD( "Nothing written!");
   }
   return written < sizeof(buffer);
}
