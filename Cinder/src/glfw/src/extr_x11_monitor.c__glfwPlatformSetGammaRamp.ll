; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_monitor.c__glfwPlatformSetGammaRamp.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_monitor.c__glfwPlatformSetGammaRamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetGammaRamp(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %64, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_20__* @XRRAllocGamma(i32 %14)
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 2
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i32 %18, i64 %21, i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 2
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i32 %31, i64 %34, i32 %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 2
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i32 %44, i64 %47, i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = call i32 @XRRSetCrtcGamma(i32 %55, i32 %59, %struct.TYPE_20__* %60)
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = call i32 @XRRFreeGamma(%struct.TYPE_20__* %62)
  br label %64

64:                                               ; preds = %11, %8, %2
  ret void
}

declare dso_local %struct.TYPE_20__* @XRRAllocGamma(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @XRRSetCrtcGamma(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @XRRFreeGamma(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
