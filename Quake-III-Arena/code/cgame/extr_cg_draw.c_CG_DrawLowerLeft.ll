; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawLowerLeft.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawLowerLeft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ICON_SIZE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_drawTeamOverlay = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawLowerLeft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawLowerLeft() #0 {
  %1 = alloca float, align 4
  %2 = load i32, i32* @ICON_SIZE, align 4
  %3 = sub nsw i32 480, %2
  %4 = sitofp i32 %3 to float
  store float %4, float* %1, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 0), align 8
  %6 = load i64, i64* @GT_TEAM, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg_drawTeamOverlay, i32 0, i32 0), align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load float, float* %1, align 4
  %13 = load i32, i32* @qfalse, align 4
  %14 = load i32, i32* @qfalse, align 4
  %15 = call float @CG_DrawTeamOverlay(float %12, i32 %13, i32 %14)
  store float %15, float* %1, align 4
  br label %16

16:                                               ; preds = %11, %8, %0
  %17 = load float, float* %1, align 4
  %18 = call float @CG_DrawPickupItem(float %17)
  store float %18, float* %1, align 4
  ret void
}

declare dso_local float @CG_DrawTeamOverlay(float, i32, i32) #1

declare dso_local float @CG_DrawPickupItem(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
