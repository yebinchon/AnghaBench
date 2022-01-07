
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FtpFile {scalar_t__ stream; int filename; } ;


 scalar_t__ fopen (int ,char*) ;
 size_t fwrite (void*,size_t,size_t,scalar_t__) ;

__attribute__((used)) static size_t my_fwrite(void *buffer, size_t size, size_t nmemb,
                        void *stream)
{
  struct FtpFile *out = (struct FtpFile *)stream;
  if(!out->stream) {

    out->stream = fopen(out->filename, "wb");
    if(!out->stream)
      return -1;
  }
  return fwrite(buffer, size, nmemb, out->stream);
}
