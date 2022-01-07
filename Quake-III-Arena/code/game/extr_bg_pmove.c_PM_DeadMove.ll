; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_DeadMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_DeadMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@pml = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@pm = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_DeadMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_DeadMove() #0 {
  %1 = alloca float, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pml, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %42

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call float @VectorLength(i32 %10)
  store float %11, float* %1, align 4
  %12 = load float, float* %1, align 4
  %13 = fsub float %12, 2.000000e+01
  store float %13, float* %1, align 4
  %14 = load float, float* %1, align 4
  %15 = fcmp ole float %14, 0.000000e+00
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @VectorClear(i32 %21)
  br label %42

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VectorNormalize(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load float, float* %1, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @VectorScale(i32 %34, float %35, i32 %40)
  br label %42

42:                                               ; preds = %4, %23, %16
  ret void
}

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
