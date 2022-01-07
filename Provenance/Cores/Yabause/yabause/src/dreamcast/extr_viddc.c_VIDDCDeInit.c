
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_640x480 ;
 int PM_RGB565 ;
 int PVR_LIST_OP_POLY ;
 int PVR_LIST_PT_POLY ;
 int PVR_LIST_TR_POLY ;
 int dmadone ;
 int pvr_mem_free (int ) ;
 int pvr_set_vertbuf (int ,int *,int ) ;
 int pvr_shutdown () ;
 int sem_destroy (int *) ;
 int tex_space ;
 int vid_set_mode (int ,int ) ;

__attribute__((used)) static void VIDDCDeInit(void) {
    pvr_set_vertbuf(PVR_LIST_OP_POLY, ((void*)0), 0);
    pvr_set_vertbuf(PVR_LIST_TR_POLY, ((void*)0), 0);
    pvr_set_vertbuf(PVR_LIST_PT_POLY, ((void*)0), 0);

    pvr_mem_free(tex_space);
    sem_destroy(&dmadone);

    pvr_shutdown();
    vid_set_mode(DM_640x480, PM_RGB565);
}
