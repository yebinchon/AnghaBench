
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_10__ {int * angles; } ;
struct TYPE_13__ {TYPE_5__* client; TYPE_3__ s; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_11__ {int * viewangles; scalar_t__* delta_angles; } ;
struct TYPE_8__ {scalar_t__* angles; } ;
struct TYPE_9__ {TYPE_1__ cmd; } ;
struct TYPE_12__ {TYPE_4__ ps; TYPE_2__ pers; } ;


 int ANGLE2SHORT (int ) ;
 int VectorCopy (int *,int *) ;

void SetClientViewAngle( gentity_t *ent, vec3_t angle ) {
 int i;


 for (i=0 ; i<3 ; i++) {
  int cmdAngle;

  cmdAngle = ANGLE2SHORT(angle[i]);
  ent->client->ps.delta_angles[i] = cmdAngle - ent->client->pers.cmd.angles[i];
 }
 VectorCopy( angle, ent->s.angles );
 VectorCopy (ent->s.angles, ent->client->ps.viewangles);
}
