
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dmadone ;
 int framecount ;
 scalar_t__ lastup ;
 int printf (char*,int,scalar_t__,float) ;
 int pvr_scene_finish () ;
 int sem_signal (int *) ;
 int sem_wait (int *) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void VIDDCVdp2DrawEnd(void) {

    sem_wait(&dmadone);
    sem_signal(&dmadone);

    pvr_scene_finish();

    ++framecount;

    if(lastup + 10 <= time(((void*)0))) {
        printf("%d frames in %d seconds FPS: %f\n", framecount, time(((void*)0)) -
               lastup, ((float)(framecount)) / (time(((void*)0)) - lastup));
        framecount = 0;
        lastup = time(((void*)0));
    }
}
