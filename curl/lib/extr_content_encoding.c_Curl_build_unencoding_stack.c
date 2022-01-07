
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct SingleRequest {int * writer_stack; int chunk; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef int content_encoding ;
typedef int contenc_writer ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_httpchunk_init (struct connectdata*) ;
 scalar_t__ ISSPACE (char const) ;
 int TRUE ;
 int const client_encoding ;
 int error_encoding ;
 int * find_encoding (char const*,size_t) ;
 void* new_unencoding_writer (struct connectdata*,int const*,int *) ;
 scalar_t__ strncasecompare (char const*,char*,int) ;

CURLcode Curl_build_unencoding_stack(struct connectdata *conn,
                                     const char *enclist, int maybechunked)
{
  struct Curl_easy *data = conn->data;
  struct SingleRequest *k = &data->req;

  do {
    const char *name;
    size_t namelen;


    while(ISSPACE(*enclist) || *enclist == ',')
      enclist++;

    name = enclist;

    for(namelen = 0; *enclist && *enclist != ','; enclist++)
      if(!ISSPACE(*enclist))
        namelen = enclist - name + 1;


    if(maybechunked && namelen == 7 && strncasecompare(name, "chunked", 7)) {
      k->chunk = TRUE;
      Curl_httpchunk_init(conn);
    }
    else if(namelen) {
      const content_encoding *encoding = find_encoding(name, namelen);
      contenc_writer *writer;

      if(!k->writer_stack) {
        k->writer_stack = new_unencoding_writer(conn, &client_encoding, ((void*)0));

        if(!k->writer_stack)
          return CURLE_OUT_OF_MEMORY;
      }

      if(!encoding)
        encoding = &error_encoding;


      writer = new_unencoding_writer(conn, encoding, k->writer_stack);
      if(!writer)
        return CURLE_OUT_OF_MEMORY;
      k->writer_stack = writer;
    }
  } while(*enclist);

  return CURLE_OK;
}
