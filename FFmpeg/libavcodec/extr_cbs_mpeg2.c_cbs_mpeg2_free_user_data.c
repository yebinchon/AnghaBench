
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int user_data_ref; } ;
typedef TYPE_1__ MPEG2RawUserData ;


 int av_buffer_unref (int *) ;
 int av_freep (int **) ;

__attribute__((used)) static void cbs_mpeg2_free_user_data(void *opaque, uint8_t *content)
{
    MPEG2RawUserData *user = (MPEG2RawUserData*)content;
    av_buffer_unref(&user->user_data_ref);
    av_freep(&content);
}
