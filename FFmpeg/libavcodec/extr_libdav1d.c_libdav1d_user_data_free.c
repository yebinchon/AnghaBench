
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;


 int av_assert0 (int) ;
 int av_free (void*) ;

__attribute__((used)) static void libdav1d_user_data_free(const uint8_t *data, void *opaque) {
    av_assert0(data == opaque);
    av_free(opaque);
}
