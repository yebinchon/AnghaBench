#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  fd; scalar_t__ ssl_ctx; scalar_t__ ssl; } ;
struct http_t {int error; scalar_t__ part; char* data; int pos; int buflen; int status; scalar_t__ bodytype; int len; TYPE_1__ sock_state; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ P_BODY ; 
 scalar_t__ P_BODY_CHUNKLEN ; 
 scalar_t__ P_DONE ; 
 scalar_t__ P_ERROR ; 
 scalar_t__ P_HEADER ; 
 scalar_t__ P_HEADER_TOP ; 
 int FUNC0 (char*) ; 
 scalar_t__ T_CHUNK ; 
 scalar_t__ T_FULL ; 
 scalar_t__ T_LEN ; 
 scalar_t__ FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (scalar_t__,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

bool FUNC10(struct http_t *state, size_t* progress, size_t* total)
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
#ifdef HAVE_SSL
         if (state->sock_state.ssl && state->sock_state.ssl_ctx)
            newlen = ssl_socket_receive_all_nonblocking(state->sock_state.ssl_ctx, &state->error,
               (uint8_t*)state->data + state->pos,
               state->buflen - state->pos);
         else
#endif
            newlen = FUNC4(state->sock_state.fd, &state->error,
               (uint8_t*)state->data + state->pos,
               state->buflen - state->pos);
      }

      if (newlen < 0)
         goto fail;

      if (state->pos + newlen >= state->buflen - 64)
      {
         state->buflen *= 2;
         state->data    = (char*)FUNC3(state->data, state->buflen);
      }
      state->pos += newlen;

      while (state->part < P_BODY)
      {
         char *dataend = state->data + state->pos;
         char *lineend = (char*)FUNC1(state->data, '\n', state->pos);

         if (!lineend)
            break;

         *lineend='\0';

         if (lineend != state->data && lineend[-1]=='\r')
            lineend[-1]='\0';

         if (state->part == P_HEADER_TOP)
         {
            if (FUNC7(state->data, "HTTP/1.", FUNC0("HTTP/1."))!=0)
               goto fail;
            state->status = (int)FUNC9(state->data 
                  + FUNC0("HTTP/1.1 "), NULL, 10);
            state->part   = P_HEADER;
         }
         else
         {
            if (!FUNC7(state->data, "Content-Length: ",
                     FUNC0("Content-Length: ")))
            {
               state->bodytype = T_LEN;
               state->len = FUNC8(state->data +
                     FUNC0("Content-Length: "), NULL, 10);
            }
            if (FUNC6(state->data, "Transfer-Encoding: chunked"))
               state->bodytype = T_CHUNK;

            /* TODO: save headers somewhere */
            if (state->data[0]=='\0')
            {
               state->part = P_BODY;
               if (state->bodytype == T_CHUNK)
                  state->part = P_BODY_CHUNKLEN;
            }
         }

         FUNC2(state->data, lineend + 1, dataend-(lineend+1));
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
#ifdef HAVE_SSL
            if (state->sock_state.ssl && state->sock_state.ssl_ctx)
               newlen = ssl_socket_receive_all_nonblocking(
                  state->sock_state.ssl_ctx,
                  &state->error,
                  (uint8_t*)state->data + state->pos,
                  state->buflen - state->pos);
            else
#endif
               newlen = FUNC4(
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
               state->data = (char*)FUNC3(state->data, state->len);
            }
            else
               goto fail;
            newlen=0;
         }

         if (state->pos + newlen >= state->buflen - 64)
         {
            state->buflen *= 2;
            state->data = (char*)FUNC3(state->data, state->buflen);
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
               /*
                * len=start of chunk including \r\n
                * pos=end of data
                */

               char *fullend = state->data + state->pos;
               char *end     = (char*)FUNC1(state->data + state->len + 2, '\n',
                                             state->pos - state->len - 2);

               if (end)
               {
                  size_t chunklen = FUNC9(state->data+state->len, NULL, 16);
                  state->pos      = state->len;
                  end++;

                  FUNC2(state->data+state->len, end, fullend-end);

                  state->len      = chunklen;
                  newlen          = (fullend - end);

                  /*
                     len=num bytes
                     newlen=unparsed bytes after \n
                     pos=start of chunk including \r\n
                     */

                  state->part = P_BODY;
                  if (state->len == 0)
                  {
                     state->part = P_DONE;
                     state->len  = state->pos;
                     state->data = (char*)FUNC3(state->data, state->len);
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
               newlen     -= state->len;
               state->len  = state->pos;
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
            state->data = (char*)FUNC3(state->data, state->len);
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
      state->error  = true;
      state->part   = P_ERROR;
      state->status = -1;
   }

   return true;
}