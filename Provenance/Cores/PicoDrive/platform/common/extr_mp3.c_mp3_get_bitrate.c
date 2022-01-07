
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int SEEK_SET ;
 int fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int memset (unsigned char*,int ,int) ;
 int try_get_bitrate (unsigned char*,int) ;

int mp3_get_bitrate(void *f_, int len)
{
 unsigned char buf[2048];
 FILE *f = f_;
 int retval = -1;
 int ret;

 memset(buf, 0, sizeof(buf));

 fseek(f, 0, SEEK_SET);
 ret = fread(buf, 1, sizeof(buf), f);
 if (ret != sizeof(buf))
  goto out;

 ret = try_get_bitrate(buf, sizeof(buf));
 if (ret <= 0) {

  fseek(f, len / 2, SEEK_SET);
  ret = fread(buf, 1, sizeof(buf), f);
  if (ret == sizeof(buf))
   ret = try_get_bitrate(buf, sizeof(buf));
 }
 if (ret > 0)
  retval = ret;



out:
 fseek(f, 0, SEEK_SET);
 return retval;
}
