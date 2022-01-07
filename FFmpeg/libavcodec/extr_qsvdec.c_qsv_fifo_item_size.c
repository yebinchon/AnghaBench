
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfxSyncPoint ;
typedef int QSVFrame ;



__attribute__((used)) static inline unsigned int qsv_fifo_item_size(void)
{
    return sizeof(mfxSyncPoint*) + sizeof(QSVFrame*);
}
