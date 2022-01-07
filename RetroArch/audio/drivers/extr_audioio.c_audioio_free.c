
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIO_FLUSH ;
 int close (int) ;
 int free (int*) ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void audioio_free(void *data)
{
   int *fd = (int*)data;





   close(*fd);
   free(fd);
}
