
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int dummy; } ;


 int __wiiuse_speaker_vol ;

void set_speakervol(struct wiimote_t *wm,ubyte vol)
{
 __wiiuse_speaker_vol = vol;
}
