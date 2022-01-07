; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetGammaRamp.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetGammaRamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetGammaRamp(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @XRRGetCrtcGammaSize(i32 %13, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_20__* @XRRGetCrtcGamma(i32 %19, i32 %23)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @_glfwAllocGammaArrays(%struct.TYPE_21__* %25, i64 %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 %34, 2
  %36 = call i32 @memcpy(i32 %30, i32 %33, i64 %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = mul i64 %43, 2
  %45 = call i32 @memcpy(i32 %39, i32 %42, i64 %44)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = mul i64 %52, 2
  %54 = call i32 @memcpy(i32 %48, i32 %51, i64 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = call i32 @XRRFreeGamma(%struct.TYPE_20__* %55)
  br label %57

57:                                               ; preds = %12, %9, %2
  ret void
}

declare dso_local i64 @XRRGetCrtcGammaSize(i32, i32) #1

declare dso_local %struct.TYPE_20__* @XRRGetCrtcGamma(i32, i32) #1

declare dso_local i32 @_glfwAllocGammaArrays(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @XRRFreeGamma(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
