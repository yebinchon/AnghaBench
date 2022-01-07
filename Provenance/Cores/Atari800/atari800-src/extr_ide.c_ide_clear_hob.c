
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_device {int select; } ;



__attribute__((used)) static void ide_clear_hob(struct ide_device *s) {
    s->select &= ~(1<<7);
}
