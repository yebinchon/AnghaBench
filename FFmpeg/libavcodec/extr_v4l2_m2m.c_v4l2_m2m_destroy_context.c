
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int fd; int refsync; int capture; } ;
typedef TYPE_1__ V4L2m2mContext ;


 int av_free (TYPE_1__*) ;
 int close (int ) ;
 int ff_v4l2_context_release (int *) ;
 int sem_destroy (int *) ;

__attribute__((used)) static void v4l2_m2m_destroy_context(void *opaque, uint8_t *context)
{
    V4L2m2mContext *s = (V4L2m2mContext*)context;

    ff_v4l2_context_release(&s->capture);
    sem_destroy(&s->refsync);

    close(s->fd);

    av_free(s);
}
