
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Curl_chunker {int state; size_t hexindex; char* hexbuffer; size_t datasize; void* dataleft; } ;
struct connectdata {size_t trlPos; int* trailer; int trlMax; struct Curl_easy* data; struct Curl_chunker chunk; } ;
struct SingleRequest {int writer_stack; int ignorebody; } ;
struct TYPE_2__ {scalar_t__ http_te_skip; int http_ce_skip; } ;
struct Curl_easy {TYPE_1__ set; struct SingleRequest req; } ;
typedef size_t ssize_t ;
typedef size_t curl_off_t ;
typedef scalar_t__ CURLcode ;
typedef int CHUNKcode ;


 int CHUNKE_BAD_CHUNK ;
 int CHUNKE_ILLEGAL_HEX ;
 int CHUNKE_OK ;
 int CHUNKE_OUT_OF_MEMORY ;
 int CHUNKE_PASSTHRU_ERROR ;
 int CHUNKE_STOP ;
 int CHUNKE_TOO_LONG_HEX ;
 int CLIENTWRITE_BODY ;
 int CLIENTWRITE_HEADER ;
 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_client_write (struct connectdata*,int ,char*,size_t) ;
 scalar_t__ Curl_convert_from_network (struct Curl_easy*,int*,size_t) ;
 int Curl_httpchunk_init (struct connectdata*) ;
 int Curl_isxdigit_ascii (char) ;
 scalar_t__ Curl_unencode_write (struct connectdata*,int ,char*,size_t) ;
 size_t MAXNUM_SIZE ;
 void* curlx_sotouz (size_t) ;
 int curlx_strtoofft (int*,char**,int,size_t*) ;
 char* malloc (int ) ;
 char* realloc (char*,int ) ;

CHUNKcode Curl_httpchunk_read(struct connectdata *conn,
                              char *datap,
                              ssize_t datalen,
                              ssize_t *wrotep,
                              CURLcode *extrap)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct Curl_chunker *ch = &conn->chunk;
  struct SingleRequest *k = &data->req;
  size_t piece;
  curl_off_t length = (curl_off_t)datalen;
  size_t *wrote = (size_t *)wrotep;

  *wrote = 0;



  if(data->set.http_te_skip && !k->ignorebody) {
    result = Curl_client_write(conn, CLIENTWRITE_BODY, datap, datalen);
    if(result) {
      *extrap = result;
      return CHUNKE_PASSTHRU_ERROR;
    }
  }

  while(length) {
    switch(ch->state) {
    case 134:
      if(Curl_isxdigit_ascii(*datap)) {
        if(ch->hexindex < MAXNUM_SIZE) {
          ch->hexbuffer[ch->hexindex] = *datap;
          datap++;
          length--;
          ch->hexindex++;
        }
        else {
          return CHUNKE_TOO_LONG_HEX;
        }
      }
      else {
        char *endptr;
        if(0 == ch->hexindex)


          return CHUNKE_ILLEGAL_HEX;


        ch->hexbuffer[ch->hexindex] = 0;


        result = Curl_convert_from_network(conn->data, ch->hexbuffer,
                                           ch->hexindex);
        if(result) {


          return CHUNKE_ILLEGAL_HEX;
        }

        if(curlx_strtoofft(ch->hexbuffer, &endptr, 16, &ch->datasize))
          return CHUNKE_ILLEGAL_HEX;
        ch->state = 133;
      }
      break;

    case 133:

      if(*datap == 0x0a) {

        if(0 == ch->datasize) {
          ch->state = 130;
          conn->trlPos = 0;
        }
        else
          ch->state = 135;
      }

      datap++;
      length--;
      break;

    case 135:



      piece = curlx_sotouz((ch->datasize >= length)?length:ch->datasize);


      if(!conn->data->set.http_te_skip && !k->ignorebody) {
        if(!conn->data->set.http_ce_skip && k->writer_stack)
          result = Curl_unencode_write(conn, k->writer_stack, datap, piece);
        else
          result = Curl_client_write(conn, CLIENTWRITE_BODY, datap, piece);

        if(result) {
          *extrap = result;
          return CHUNKE_PASSTHRU_ERROR;
        }
      }

      *wrote += piece;
      ch->datasize -= piece;
      datap += piece;
      length -= piece;

      if(0 == ch->datasize)

        ch->state = 132;
      break;

    case 132:
      if(*datap == 0x0a) {

        Curl_httpchunk_init(conn);
      }
      else if(*datap != 0x0d)
        return CHUNKE_BAD_CHUNK;
      datap++;
      length--;
      break;

    case 130:
      if((*datap == 0x0d) || (*datap == 0x0a)) {



        if(conn->trlPos) {

          conn->trailer[conn->trlPos++] = 0x0d;
          conn->trailer[conn->trlPos++] = 0x0a;
          conn->trailer[conn->trlPos] = 0;


          result = Curl_convert_from_network(conn->data, conn->trailer,
                                             conn->trlPos);
          if(result)


            return CHUNKE_BAD_CHUNK;

          if(!data->set.http_te_skip) {
            result = Curl_client_write(conn, CLIENTWRITE_HEADER,
                                       conn->trailer, conn->trlPos);
            if(result) {
              *extrap = result;
              return CHUNKE_PASSTHRU_ERROR;
            }
          }
          conn->trlPos = 0;
          ch->state = 129;
          if(*datap == 0x0a)

            break;
        }
        else {

          ch->state = 128;
          break;
        }
      }
      else {


        if(conn->trlPos >= conn->trlMax) {


          char *ptr;
          if(conn->trlMax) {
            conn->trlMax *= 2;
            ptr = realloc(conn->trailer, conn->trlMax + 3);
          }
          else {
            conn->trlMax = 128;
            ptr = malloc(conn->trlMax + 3);
          }
          if(!ptr)
            return CHUNKE_OUT_OF_MEMORY;
          conn->trailer = ptr;
        }
        conn->trailer[conn->trlPos++]=*datap;
      }
      datap++;
      length--;
      break;

    case 129:
      if(*datap == 0x0a) {
        ch->state = 128;
        datap++;
        length--;
      }
      else
        return CHUNKE_BAD_CHUNK;
      break;

    case 128:


      if((*datap != 0x0d) && (*datap != 0x0a)) {

        ch->state = 130;
        break;
      }
      if(*datap == 0x0d) {

        datap++;
        length--;
      }

      ch->state = 131;
      break;

    case 131:
      if(*datap == 0x0a) {
        length--;



        ch->dataleft = curlx_sotouz(length);

        return CHUNKE_STOP;
      }
      else
        return CHUNKE_BAD_CHUNK;
    }
  }
  return CHUNKE_OK;
}
