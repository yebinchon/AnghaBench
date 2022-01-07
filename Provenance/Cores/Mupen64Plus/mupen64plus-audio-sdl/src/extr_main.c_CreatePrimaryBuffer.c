
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugMessage (int ,char*,unsigned int) ;
 long long GameFreq ;
 int M64MSG_VERBOSE ;
 unsigned int N64_SAMPLE_BYTES ;
 int OutputFreq ;
 scalar_t__ PrimaryBufferSize ;
 int SDL_LockAudio () ;
 int SDL_UnlockAudio () ;
 int free (unsigned char*) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int memset (unsigned char*,int ,unsigned int) ;
 unsigned char* primaryBuffer ;
 unsigned int primaryBufferBytes ;
 long long speed_factor ;

__attribute__((used)) static void CreatePrimaryBuffer(void)
{
    unsigned int newPrimaryBytes = (unsigned int) ((long long) PrimaryBufferSize * GameFreq * speed_factor /
                                                   (OutputFreq * 100)) * N64_SAMPLE_BYTES;
    if (primaryBuffer == ((void*)0))
    {
        DebugMessage(M64MSG_VERBOSE, "Allocating memory for audio buffer: %i bytes.", newPrimaryBytes);
        primaryBuffer = (unsigned char*) malloc(newPrimaryBytes);
        memset(primaryBuffer, 0, newPrimaryBytes);
        primaryBufferBytes = newPrimaryBytes;
    }
    else if (newPrimaryBytes > primaryBufferBytes)
    {
        unsigned char *newPrimaryBuffer = (unsigned char*) malloc(newPrimaryBytes);
        unsigned char *oldPrimaryBuffer = primaryBuffer;
        SDL_LockAudio();
        memcpy(newPrimaryBuffer, oldPrimaryBuffer, primaryBufferBytes);
        memset(newPrimaryBuffer + primaryBufferBytes, 0, newPrimaryBytes - primaryBufferBytes);
        primaryBuffer = newPrimaryBuffer;
        primaryBufferBytes = newPrimaryBytes;
        SDL_UnlockAudio();
        free(oldPrimaryBuffer);
    }
}
