
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _iop_thread {int priority; int stacksize; scalar_t__ option; void* thread; int attr; } ;
struct TYPE_7__ {char* cache; scalar_t__ cache_size; scalar_t__ cache_offset; scalar_t__ sector_num; scalar_t__ sector_start; scalar_t__ path_depth; int valid; int pathname; } ;
struct TYPE_6__ {int datapattern; int spindlctrl; scalar_t__ trycount; } ;
struct TYPE_5__ {char* name; int version; char* desc; int * ops; int type; } ;


 int AddDrv (TYPE_1__*) ;
 scalar_t__ AllocSysMemory (int ,int,int *) ;
 scalar_t__ CDVD_Thread ;
 TYPE_3__ CachedDirInfo ;
 int CreateThread (struct _iop_thread*) ;
 int DelDrv (char*) ;
 int FALSE ;
 int IOP_DT_FS ;
 int MAX_DIR_CACHE_SECTORS ;
 int MODULE_NO_RESIDENT_END ;
 int MODULE_RESIDENT_END ;
 int SCECdSecS2048 ;
 int SCECdSpinStm ;
 int StartThread (int,int *) ;
 int TH_C ;
 TYPE_2__ cdReadMode ;
 TYPE_1__ file_driver ;
 int filedriver_ops ;
 int strcpy (int ,char*) ;

int _start(int argc, char **argv)
{
    int i;
    struct _iop_thread param;
    int th;


    strcpy(CachedDirInfo.pathname, "");
    CachedDirInfo.valid = FALSE;
    CachedDirInfo.path_depth = 0;
    CachedDirInfo.sector_start = 0;
    CachedDirInfo.sector_num = 0;
    CachedDirInfo.cache_offset = 0;
    CachedDirInfo.cache_size = 0;

    if (CachedDirInfo.cache == ((void*)0))
        CachedDirInfo.cache = (char *)AllocSysMemory(0, MAX_DIR_CACHE_SECTORS * 2048, ((void*)0));



    cdReadMode.trycount = 0;
    cdReadMode.spindlctrl = SCECdSpinStm;
    cdReadMode.datapattern = SCECdSecS2048;


    file_driver.name = "cdfs";
    file_driver.type = IOP_DT_FS;
    file_driver.version = 1;
    file_driver.desc = "CDVD Filedriver";
    file_driver.ops = &filedriver_ops;

    DelDrv("cdfs");
    AddDrv(&file_driver);

    param.attr = TH_C;
    param.thread = (void *)CDVD_Thread;
    param.priority = 40;
    param.stacksize = 0x8000;
    param.option = 0;

    th = CreateThread(&param);

    if (th > 0) {
        StartThread(th, ((void*)0));
        return MODULE_RESIDENT_END;
    } else
        return MODULE_NO_RESIDENT_END;
}
