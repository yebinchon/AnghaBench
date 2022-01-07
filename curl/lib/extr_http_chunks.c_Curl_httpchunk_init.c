
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_chunker {int state; scalar_t__ dataleft; scalar_t__ hexindex; } ;
struct connectdata {struct Curl_chunker chunk; } ;


 int CHUNK_HEX ;

void Curl_httpchunk_init(struct connectdata *conn)
{
  struct Curl_chunker *chunk = &conn->chunk;
  chunk->hexindex = 0;
  chunk->dataleft = 0;
  chunk->state = CHUNK_HEX;
}
