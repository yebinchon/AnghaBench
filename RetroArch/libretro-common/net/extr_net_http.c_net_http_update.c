
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int fd; scalar_t__ ssl_ctx; scalar_t__ ssl; } ;
struct http_t {int error; scalar_t__ part; char* data; int pos; int buflen; int status; scalar_t__ bodytype; int len; TYPE_1__ sock_state; } ;
typedef int ssize_t ;


 scalar_t__ P_BODY ;
 scalar_t__ P_BODY_CHUNKLEN ;
 scalar_t__ P_DONE ;
 scalar_t__ P_ERROR ;
 scalar_t__ P_HEADER ;
 scalar_t__ P_HEADER_TOP ;
 int STRLEN_CONST (char*) ;
 scalar_t__ T_CHUNK ;
 scalar_t__ T_FULL ;
 scalar_t__ T_LEN ;
 scalar_t__ memchr (char*,char,int) ;
 int memmove (char*,char*,int) ;
 scalar_t__ realloc (char*,int) ;
 int socket_receive_all_nonblocking (int ,int*,int *,int) ;
 int ssl_socket_receive_all_nonblocking (scalar_t__,int*,int *,int) ;
 scalar_t__ string_is_equal (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,int *,int) ;
 size_t strtoul (char*,int *,int) ;

bool net_http_update(struct http_t *state, size_t* progress, size_t* total)
{
   ssize_t newlen = 0;

   if (!state || state->error)
      goto fail;

   if (state->part < P_BODY)
   {
      if (state->error)
         newlen = -1;
      else
      {







            newlen = socket_receive_all_nonblocking(state->sock_state.fd, &state->error,
               (uint8_t*)state->data + state->pos,
               state->buflen - state->pos);
      }

      if (newlen < 0)
         goto fail;

      if (state->pos + newlen >= state->buflen - 64)
      {
         state->buflen *= 2;
         state->data = (char*)realloc(state->data, state->buflen);
      }
      state->pos += newlen;

      while (state->part < P_BODY)
      {
         char *dataend = state->data + state->pos;
         char *lineend = (char*)memchr(state->data, '\n', state->pos);

         if (!lineend)
            break;

         *lineend='\0';

         if (lineend != state->data && lineend[-1]=='\r')
            lineend[-1]='\0';

         if (state->part == P_HEADER_TOP)
         {
            if (strncmp(state->data, "HTTP/1.", STRLEN_CONST("HTTP/1."))!=0)
               goto fail;
            state->status = (int)strtoul(state->data
                  + STRLEN_CONST("HTTP/1.1 "), ((void*)0), 10);
            state->part = P_HEADER;
         }
         else
         {
            if (!strncmp(state->data, "Content-Length: ",
                     STRLEN_CONST("Content-Length: ")))
            {
               state->bodytype = T_LEN;
               state->len = strtol(state->data +
                     STRLEN_CONST("Content-Length: "), ((void*)0), 10);
            }
            if (string_is_equal(state->data, "Transfer-Encoding: chunked"))
               state->bodytype = T_CHUNK;


            if (state->data[0]=='\0')
            {
               state->part = P_BODY;
               if (state->bodytype == T_CHUNK)
                  state->part = P_BODY_CHUNKLEN;
            }
         }

         memmove(state->data, lineend + 1, dataend-(lineend+1));
         state->pos = (dataend-(lineend + 1));
      }
      if (state->part >= P_BODY)
      {
         newlen = state->pos;
         state->pos = 0;
      }
   }

   if (state->part >= P_BODY && state->part < P_DONE)
   {
      if (!newlen)
      {
         if (state->error)
            newlen = -1;
         else
         {
               newlen = socket_receive_all_nonblocking(
                  state->sock_state.fd,
                  &state->error,
                  (uint8_t*)state->data + state->pos,
                  state->buflen - state->pos);
         }

         if (newlen < 0)
         {
            if (state->bodytype == T_FULL)
            {
               state->part = P_DONE;
               state->data = (char*)realloc(state->data, state->len);
            }
            else
               goto fail;
            newlen=0;
         }

         if (state->pos + newlen >= state->buflen - 64)
         {
            state->buflen *= 2;
            state->data = (char*)realloc(state->data, state->buflen);
         }
      }

parse_again:
      if (state->bodytype == T_CHUNK)
      {
         if (state->part == P_BODY_CHUNKLEN)
         {
            state->pos += newlen;
            if (state->pos - state->len >= 2)
            {





               char *fullend = state->data + state->pos;
               char *end = (char*)memchr(state->data + state->len + 2, '\n',
                                             state->pos - state->len - 2);

               if (end)
               {
                  size_t chunklen = strtoul(state->data+state->len, ((void*)0), 16);
                  state->pos = state->len;
                  end++;

                  memmove(state->data+state->len, end, fullend-end);

                  state->len = chunklen;
                  newlen = (fullend - end);







                  state->part = P_BODY;
                  if (state->len == 0)
                  {
                     state->part = P_DONE;
                     state->len = state->pos;
                     state->data = (char*)realloc(state->data, state->len);
                  }
                  goto parse_again;
               }
            }
         }
         else if (state->part == P_BODY)
         {
            if ((size_t)newlen >= state->len)
            {
               state->pos += state->len;
               newlen -= state->len;
               state->len = state->pos;
               state->part = P_BODY_CHUNKLEN;
               goto parse_again;
            }
            else
            {
               state->pos += newlen;
               state->len -= newlen;
            }
         }
      }
      else
      {
         state->pos += newlen;

         if (state->pos == state->len)
         {
            state->part = P_DONE;
            state->data = (char*)realloc(state->data, state->len);
         }
         if (state->pos > state->len)
            goto fail;
      }
   }

   if (progress)
      *progress = state->pos;

   if (total)
   {
      if (state->bodytype == T_LEN)
         *total=state->len;
      else
         *total=0;
   }

   return (state->part == P_DONE);

fail:
   if (state)
   {
      state->error = 1;
      state->part = P_ERROR;
      state->status = -1;
   }

   return 1;
}
