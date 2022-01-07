
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
typedef int contenc_writer ;
typedef int CURLcode ;


 int CURLE_BAD_CONTENT_ENCODING ;
 int CURLE_OUT_OF_MEMORY ;
 char* Curl_all_content_encodings () ;
 int failf (int ,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static CURLcode error_unencode_write(struct connectdata *conn,
                                     contenc_writer *writer,
                                     const char *buf, size_t nbytes)
{
  char *all = Curl_all_content_encodings();

  (void) writer;
  (void) buf;
  (void) nbytes;

  if(!all)
    return CURLE_OUT_OF_MEMORY;
  failf(conn->data, "Unrecognized content encoding type. "
                    "libcurl understands %s content encodings.", all);
  free(all);
  return CURLE_BAD_CONTENT_ENCODING;
}
