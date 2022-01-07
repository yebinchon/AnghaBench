
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vec3w_t {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct gforce_t {float x; float y; float z; } ;
struct TYPE_4__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_3__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct accel_t {TYPE_2__ cal_zero; TYPE_1__ cal_g; } ;



void calculate_gforce(struct accel_t* ac, struct vec3w_t* accel, struct gforce_t* gforce) {
 float xg, yg, zg;


 xg = (float)ac->cal_g.x;
 yg = (float)ac->cal_g.y;
 zg = (float)ac->cal_g.z;


 gforce->x = ((float)accel->x - (float)ac->cal_zero.x) / xg;
 gforce->y = ((float)accel->y - (float)ac->cal_zero.y) / yg;
 gforce->z = ((float)accel->z - (float)ac->cal_zero.z) / zg;
}
