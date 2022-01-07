
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {scalar_t__ magic; int frame; } ;


 scalar_t__ MAGIC ;
 int av_assert0 (int) ;
 int av_frame_free (int *) ;

__attribute__((used)) static void free_frame(void *arg)
{
    struct message *msg = arg;
    av_assert0(msg->magic == MAGIC);
    av_frame_free(&msg->frame);
}
