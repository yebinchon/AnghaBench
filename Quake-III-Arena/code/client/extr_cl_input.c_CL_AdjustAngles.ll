; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_AdjustAngles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_AdjustAngles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { double }
%struct.TYPE_13__ = type { double }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_14__ = type { float* }
%struct.TYPE_12__ = type { float }

@in_speed = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cl_anglespeedkey = common dso_local global %struct.TYPE_13__* null, align 8
@in_strafe = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cl_yawspeed = common dso_local global %struct.TYPE_11__* null, align 8
@in_right = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@YAW = common dso_local global i64 0, align 8
@in_left = common dso_local global i32 0, align 4
@cl_pitchspeed = common dso_local global %struct.TYPE_12__* null, align 8
@in_lookup = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@in_lookdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_AdjustAngles() #0 {
  %1 = alloca float, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @in_speed, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load double, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %6 = fmul double 1.000000e-03, %5
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_anglespeedkey, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fmul double %6, %9
  %11 = fptrunc double %10 to float
  store float %11, float* %1, align 4
  br label %16

12:                                               ; preds = %0
  %13 = load double, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %14 = fmul double 1.000000e-03, %13
  %15 = fptrunc double %14 to float
  store float %15, float* %1, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @in_strafe, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = load float, float* %1, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_yawspeed, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = fmul float %20, %23
  %25 = call float @CL_KeyState(i32* @in_right)
  %26 = fmul float %24, %25
  %27 = load float*, float** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %28 = load i64, i64* @YAW, align 8
  %29 = getelementptr inbounds float, float* %27, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fsub float %30, %26
  store float %31, float* %29, align 4
  %32 = load float, float* %1, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_yawspeed, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fmul float %32, %35
  %37 = call float @CL_KeyState(i32* @in_left)
  %38 = fmul float %36, %37
  %39 = load float*, float** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %40 = load i64, i64* @YAW, align 8
  %41 = getelementptr inbounds float, float* %39, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fadd float %42, %38
  store float %43, float* %41, align 4
  br label %44

44:                                               ; preds = %19, %16
  %45 = load float, float* %1, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_pitchspeed, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = fmul float %45, %48
  %50 = call float @CL_KeyState(i32* @in_lookup)
  %51 = fmul float %49, %50
  %52 = load float*, float** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %53 = load i64, i64* @PITCH, align 8
  %54 = getelementptr inbounds float, float* %52, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fsub float %55, %51
  store float %56, float* %54, align 4
  %57 = load float, float* %1, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_pitchspeed, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fmul float %57, %60
  %62 = call float @CL_KeyState(i32* @in_lookdown)
  %63 = fmul float %61, %62
  %64 = load float*, float** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %65 = load i64, i64* @PITCH, align 8
  %66 = getelementptr inbounds float, float* %64, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fadd float %67, %63
  store float %68, float* %66, align 4
  ret void
}

declare dso_local float @CL_KeyState(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
