
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct motion_plus_t {int rx; int ry; int rz; int ext; int status; } ;



void motion_plus_event(struct motion_plus_t* mp, ubyte* msg)
{
 mp->rx = ((msg[5] & 0xFC) << 6) | msg[2];
 mp->ry = ((msg[4] & 0xFC) << 6) | msg[1];
 mp->rz = ((msg[3] & 0xFC) << 6) | msg[0];

 mp->ext = msg[4] & 0x1;
 mp->status = (msg[3] & 0x3) | ((msg[4] & 0x2) << 1);
}
