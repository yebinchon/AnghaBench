
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;
typedef int s16 ;


 int BUFFER_LEN ;
 scalar_t__ buffer ;
 int macConvert32uto16s (int *,int *,int *,int) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int write_pos ;

__attribute__((used)) static void SNDMacUpdateAudio(u32 *left, u32 *right, u32 cnt) {
    u32 copy1size=0, copy2size=0;

    pthread_mutex_lock(&mutex);

    if((BUFFER_LEN - write_pos) < (cnt << 2)) {
        copy1size = (BUFFER_LEN - write_pos);
        copy2size = (cnt << 2) - copy1size;
    }
    else {
        copy1size = (cnt << 2);
        copy2size = 0;
    }

    macConvert32uto16s((s32 *)left, (s32 *)right,
                       (s16 *)(((u8 *)buffer) + write_pos),
                       copy1size >> 2);

    if(copy2size) {
        macConvert32uto16s((s32 *)left + (copy1size >> 2),
                           (s32 *)right + (copy1size >> 2),
                           (s16 *)buffer, copy2size >> 2);
    }

    write_pos += copy1size + copy2size;
    write_pos %= (BUFFER_LEN);

    pthread_mutex_unlock(&mutex);
}
