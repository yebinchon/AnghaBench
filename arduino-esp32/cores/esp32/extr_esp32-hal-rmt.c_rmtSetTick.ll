; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-rmt.c_rmtSetTick.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-rmt.c_rmtSetTick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@RMT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @rmtSetTick(%struct.TYPE_10__* %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store float %1, float* %5, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load float, float* %5, align 4
  %16 = fpext float %15 to double
  %17 = fdiv double %16, 1.250000e+01
  %18 = fptrunc double %17 to float
  %19 = call i32 @_LIMIT(float %18, i32 256)
  store i32 %19, i32* %6, align 4
  %20 = load float, float* %5, align 4
  %21 = fdiv float %20, 1.000000e+03
  %22 = call i32 @_LIMIT(float %21, i32 256)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double 1.250000e+01, %24
  %26 = fptrunc double %25 to float
  store float %26, float* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double 1.000000e+03, %28
  %30 = fptrunc double %29 to float
  store float %30, float* %9, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load float, float* %8, align 4
  %35 = load float, float* %5, align 4
  %36 = fsub float %34, %35
  %37 = call i64 @_ABS(float %36)
  %38 = load float, float* %9, align 4
  %39 = load float, float* %5, align 4
  %40 = fsub float %38, %39
  %41 = call i64 @_ABS(float %40)
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 255
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @RMT, i32 0, i32 0), align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @RMT, i32 0, i32 0), align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load float, float* %8, align 4
  store float %56, float* %3, align 4
  br label %71

57:                                               ; preds = %14
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 255
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @RMT, i32 0, i32 0), align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @RMT, i32 0, i32 0), align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load float, float* %9, align 4
  store float %70, float* %3, align 4
  br label %71

71:                                               ; preds = %57, %43, %13
  %72 = load float, float* %3, align 4
  ret float %72
}

declare dso_local i32 @_LIMIT(float, i32) #1

declare dso_local i64 @_ABS(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
