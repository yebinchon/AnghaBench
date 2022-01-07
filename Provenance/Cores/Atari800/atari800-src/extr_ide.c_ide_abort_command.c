
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_device {int status; int error; } ;


 int ABRT_ERR ;
 int ERR_STAT ;
 int READY_STAT ;

__attribute__((used)) static inline void ide_abort_command(struct ide_device *s) {
    s->status = READY_STAT | ERR_STAT;
    s->error = ABRT_ERR;
}
