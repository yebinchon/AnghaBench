; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_patch.c_CM_PointOnPlaneSide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_patch.c_CM_PointOnPlaneSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float* }

@SIDE_ON = common dso_local global i32 0, align 4
@planes = common dso_local global %struct.TYPE_2__* null, align 8
@PLANE_TRI_EPSILON = common dso_local global float 0.000000e+00, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, i32)* @CM_PointOnPlaneSide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_PointOnPlaneSide(float* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SIDE_ON, align 4
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load float*, float** %17, align 8
  store float* %18, float** %6, align 8
  %19 = load float*, float** %4, align 8
  %20 = load float*, float** %6, align 8
  %21 = call float @DotProduct(float* %19, float* %20)
  %22 = load float*, float** %6, align 8
  %23 = getelementptr inbounds float, float* %22, i64 3
  %24 = load float, float* %23, align 4
  %25 = fsub float %21, %24
  store float %25, float* %7, align 4
  %26 = load float, float* %7, align 4
  %27 = load float, float* @PLANE_TRI_EPSILON, align 4
  %28 = fcmp ogt float %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = load i32, i32* @SIDE_FRONT, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %12
  %32 = load float, float* %7, align 4
  %33 = load float, float* @PLANE_TRI_EPSILON, align 4
  %34 = fneg float %33
  %35 = fcmp olt float %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @SIDE_BACK, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @SIDE_ON, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %29, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
