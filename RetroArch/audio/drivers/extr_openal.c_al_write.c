
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ tmpbuf_ptr; int source; int rate; int tmpbuf; } ;
typedef TYPE_1__ al_t ;
typedef int ALuint ;
typedef scalar_t__ ALint ;


 int AL_FORMAT_STEREO16 ;
 scalar_t__ AL_NO_ERROR ;
 scalar_t__ AL_PLAYING ;
 int AL_SOURCE_STATE ;
 scalar_t__ BUFSIZE ;
 int alBufferData (int ,int ,int ,scalar_t__,int ) ;
 scalar_t__ alGetError () ;
 int alGetSourcei (int ,int ,scalar_t__*) ;
 int alSourcePlay (int ) ;
 int alSourceQueueBuffers (int ,int,int *) ;
 size_t al_fill_internal_buf (TYPE_1__*,int const*,size_t) ;
 int al_get_buffer (TYPE_1__*,int *) ;

__attribute__((used)) static ssize_t al_write(void *data, const void *buf_, size_t size)
{
   al_t *al = (al_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   size_t written = 0;

   while (size)
   {
      ALint val;
      ALuint buffer;
      size_t rc = al_fill_internal_buf(al, buf, size);

      written += rc;
      buf += rc;
      size -= rc;

      if (al->tmpbuf_ptr != BUFSIZE)
         break;

      if (!al_get_buffer(al, &buffer))
         break;

      alBufferData(buffer, AL_FORMAT_STEREO16, al->tmpbuf, BUFSIZE, al->rate);
      al->tmpbuf_ptr = 0;
      alSourceQueueBuffers(al->source, 1, &buffer);
      if (alGetError() != AL_NO_ERROR)
         return -1;

      alGetSourcei(al->source, AL_SOURCE_STATE, &val);
      if (val != AL_PLAYING)
         alSourcePlay(al->source);

      if (alGetError() != AL_NO_ERROR)
         return -1;
   }

   return written;
}
