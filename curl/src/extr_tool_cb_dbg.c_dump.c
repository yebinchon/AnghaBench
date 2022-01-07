
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ trace ;
typedef int curl_infotype ;
typedef int FILE ;


 scalar_t__ TRACE_ASCII ;
 scalar_t__ TRACE_BIN ;
 unsigned char const UNPRINTABLE_CHAR ;
 int convert_char (int ,unsigned char const) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void dump(const char *timebuf, const char *text,
                 FILE *stream, const unsigned char *ptr, size_t size,
                 trace tracetype, curl_infotype infotype)
{
  size_t i;
  size_t c;

  unsigned int width = 0x10;

  if(tracetype == TRACE_ASCII)

    width = 0x40;

  fprintf(stream, "%s%s, %zu bytes (0x%zx)\n", timebuf, text, size, size);

  for(i = 0; i < size; i += width) {

    fprintf(stream, "%04zx: ", i);

    if(tracetype == TRACE_BIN) {

      for(c = 0; c < width; c++)
        if(i + c < size)
          fprintf(stream, "%02x ", ptr[i + c]);
        else
          fputs("   ", stream);
    }

    for(c = 0; (c < width) && (i + c < size); c++) {

      if((tracetype == TRACE_ASCII) &&
         (i + c + 1 < size) && (ptr[i + c] == 0x0D) &&
         (ptr[i + c + 1] == 0x0A)) {
        i += (c + 2 - width);
        break;
      }
      (void)infotype;
      fprintf(stream, "%c", ((ptr[i + c] >= 0x20) && (ptr[i + c] < 0x80)) ?
              ptr[i + c] : UNPRINTABLE_CHAR);


      if((tracetype == TRACE_ASCII) &&
         (i + c + 2 < size) && (ptr[i + c + 1] == 0x0D) &&
         (ptr[i + c + 2] == 0x0A)) {
        i += (c + 3 - width);
        break;
      }
    }
    fputc('\n', stream);
  }
  fflush(stream);
}
