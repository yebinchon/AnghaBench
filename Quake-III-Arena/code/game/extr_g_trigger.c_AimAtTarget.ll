; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_trigger.c_AimAtTarget.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_trigger.c_AimAtTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { float*, float* }
%struct.TYPE_8__ = type { i32, i32 }

@g_gravity = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AimAtTarget(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load float*, float** %4, align 8
  %19 = call i32 @VectorAdd(i32 %13, i32 %17, float* %18)
  %20 = load float*, float** %4, align 8
  %21 = load float*, float** %4, align 8
  %22 = call i32 @VectorScale(float* %20, float 5.000000e-01, float* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_10__* @G_PickTarget(i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %3, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i32 @G_FreeEntity(%struct.TYPE_10__* %30)
  br label %99

32:                                               ; preds = %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = getelementptr inbounds float, float* %36, i64 2
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = fsub float %38, %41
  store float %42, float* %5, align 4
  %43 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_gravity, i32 0, i32 0), align 4
  store float %43, float* %6, align 4
  %44 = load float, float* %5, align 4
  %45 = fpext float %44 to double
  %46 = load float, float* %6, align 4
  %47 = fpext float %46 to double
  %48 = fmul double 5.000000e-01, %47
  %49 = fdiv double %45, %48
  %50 = fptrunc double %49 to float
  %51 = call float @sqrt(float %50)
  store float %51, float* %7, align 4
  %52 = load float, float* %7, align 4
  %53 = fcmp une float %52, 0.000000e+00
  br i1 %53, label %57, label %54

54:                                               ; preds = %32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = call i32 @G_FreeEntity(%struct.TYPE_10__* %55)
  br label %99

57:                                               ; preds = %32
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load float*, float** %60, align 8
  %62 = load float*, float** %4, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load float*, float** %65, align 8
  %67 = call i32 @VectorSubtract(float* %61, float* %62, float* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float 0.000000e+00, float* %72, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = call float @VectorNormalize(float* %76)
  store float %77, float* %9, align 4
  %78 = load float, float* %9, align 4
  %79 = load float, float* %7, align 4
  %80 = fdiv float %78, %79
  store float %80, float* %8, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = load float, float* %8, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = call i32 @VectorScale(float* %84, float %85, float* %89)
  %91 = load float, float* %7, align 4
  %92 = load float, float* %6, align 4
  %93 = fmul float %91, %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load float*, float** %96, align 8
  %98 = getelementptr inbounds float, float* %97, i64 2
  store float %93, float* %98, align 4
  br label %99

99:                                               ; preds = %57, %54, %29
  ret void
}

declare dso_local i32 @VectorAdd(i32, i32, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local %struct.TYPE_10__* @G_PickTarget(i32) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_10__*) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @VectorNormalize(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
