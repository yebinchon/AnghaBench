
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int time; int latestSnapshotTime; } ;
struct TYPE_3__ {int* frameSamples; int frameCount; } ;


 int LAG_SAMPLES ;
 TYPE_2__ cg ;
 TYPE_1__ lagometer ;

void CG_AddLagometerFrameInfo( void ) {
 int offset;

 offset = cg.time - cg.latestSnapshotTime;
 lagometer.frameSamples[ lagometer.frameCount & ( LAG_SAMPLES - 1) ] = offset;
 lagometer.frameCount++;
}
