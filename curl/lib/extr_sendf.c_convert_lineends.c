
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prev_block_had_trailing_cr; int crlf_conversions; } ;
struct Curl_easy {TYPE_1__ state; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* memchr (char*,char,size_t) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memmove (char*,char*,size_t) ;

__attribute__((used)) static size_t convert_lineends(struct Curl_easy *data,
                               char *startPtr, size_t size)
{
  char *inPtr, *outPtr;


  if((startPtr == ((void*)0)) || (size < 1)) {
    return size;
  }

  if(data->state.prev_block_had_trailing_cr) {


    if(*startPtr == '\n') {


      memmove(startPtr, startPtr + 1, size-1);
      size--;

      data->state.crlf_conversions++;
    }
    data->state.prev_block_had_trailing_cr = FALSE;
  }


  inPtr = outPtr = memchr(startPtr, '\r', size);
  if(inPtr) {

    while(inPtr < (startPtr + size-1)) {

      if(memcmp(inPtr, "\r\n", 2) == 0) {

        inPtr++;
        *outPtr = *inPtr;

        data->state.crlf_conversions++;
      }
      else {
        if(*inPtr == '\r') {

          *outPtr = '\n';
        }
        else {

          *outPtr = *inPtr;
        }
      }
      outPtr++;
      inPtr++;
    }

    if(inPtr < startPtr + size) {

      if(*inPtr == '\r') {

        *outPtr = '\n';

        data->state.prev_block_had_trailing_cr = TRUE;
      }
      else {

        *outPtr = *inPtr;
      }
      outPtr++;
    }
    if(outPtr < startPtr + size)

      *outPtr = '\0';

    return (outPtr - startPtr);
  }
  return size;
}
