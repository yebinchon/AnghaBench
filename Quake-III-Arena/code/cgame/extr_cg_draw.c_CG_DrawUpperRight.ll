; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawUpperRight.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawUpperRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_drawTeamOverlay = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@cg_drawSnapshot = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cg_drawFPS = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cg_drawTimer = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cg_drawAttacker = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawUpperRight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawUpperRight() #0 {
  %1 = alloca float, align 4
  store float 0.000000e+00, float* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %3 = load i64, i64* @GT_TEAM, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_drawTeamOverlay, i32 0, i32 0), align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load float, float* %1, align 4
  %10 = load i32, i32* @qtrue, align 4
  %11 = load i32, i32* @qtrue, align 4
  %12 = call float @CG_DrawTeamOverlay(float %9, i32 %10, i32 %11)
  store float %12, float* %1, align 4
  br label %13

13:                                               ; preds = %8, %5, %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_drawSnapshot, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load float, float* %1, align 4
  %18 = call float @CG_DrawSnapshot(float %17)
  store float %18, float* %1, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_drawFPS, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load float, float* %1, align 4
  %24 = call float @CG_DrawFPS(float %23)
  store float %24, float* %1, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg_drawTimer, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load float, float* %1, align 4
  %30 = call float @CG_DrawTimer(float %29)
  store float %30, float* %1, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_drawAttacker, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load float, float* %1, align 4
  %36 = call float @CG_DrawAttacker(float %35)
  store float %36, float* %1, align 4
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

declare dso_local float @CG_DrawTeamOverlay(float, i32, i32) #1

declare dso_local float @CG_DrawSnapshot(float) #1

declare dso_local float @CG_DrawFPS(float) #1

declare dso_local float @CG_DrawTimer(float) #1

declare dso_local float @CG_DrawAttacker(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
