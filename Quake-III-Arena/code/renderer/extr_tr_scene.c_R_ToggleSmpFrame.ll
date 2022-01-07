; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_scene.c_R_ToggleSmpFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_scene.c_R_ToggleSmpFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@r_smp = common dso_local global %struct.TYPE_7__* null, align 8
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@backEndData = common dso_local global %struct.TYPE_8__** null, align 8
@r_firstSceneDrawSurf = common dso_local global i64 0, align 8
@r_numdlights = common dso_local global i64 0, align 8
@r_firstSceneDlight = common dso_local global i64 0, align 8
@r_numentities = common dso_local global i64 0, align 8
@r_firstSceneEntity = common dso_local global i64 0, align 8
@r_numpolys = common dso_local global i64 0, align 8
@r_firstScenePoly = common dso_local global i64 0, align 8
@r_numpolyverts = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_ToggleSmpFrame() #0 {
  %1 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_smp, align 8
  %2 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 4
  %7 = xor i32 %6, 1
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 4
  br label %9

8:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @backEndData, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %12
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i64 0, i64* @r_firstSceneDrawSurf, align 8
  store i64 0, i64* @r_numdlights, align 8
  store i64 0, i64* @r_firstSceneDlight, align 8
  store i64 0, i64* @r_numentities, align 8
  store i64 0, i64* @r_firstSceneEntity, align 8
  store i64 0, i64* @r_numpolys, align 8
  store i64 0, i64* @r_firstScenePoly, align 8
  store i64 0, i64* @r_numpolyverts, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
