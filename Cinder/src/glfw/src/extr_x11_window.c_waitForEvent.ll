; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_waitForEvent.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_waitForEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i64, i64 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*)* @waitForEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitForEvent(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double* %0, double** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 1, i32 0), align 4
  %14 = call i32 @ConnectionNumber(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = call i32 @FD_ZERO(i32* %4)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FD_SET(i32 %18, i32* %4)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %21 = call i32 @FD_SET(i32 %20, i32* %4)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %1
  br label %29

29:                                               ; preds = %89, %28
  %30 = load double*, double** %3, align 8
  %31 = icmp ne double* %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = load double*, double** %3, align 8
  %34 = load double, double* %33, align 8
  %35 = fptosi double %34 to i64
  store i64 %35, i64* %7, align 8
  %36 = load double*, double** %3, align 8
  %37 = load double, double* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sitofp i64 %38 to double
  %40 = fsub double %37, %39
  %41 = fmul double %40, 1.000000e+06
  %42 = fptosi double %41 to i64
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %45, align 8
  %47 = call double (...) @_glfwPlatformGetTimerValue()
  store double %47, double* %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @select(i32 %48, i32* %4, i32* null, i32* null, %struct.timeval* %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @errno, align 4
  store i32 %50, i32* %12, align 4
  %51 = call double (...) @_glfwPlatformGetTimerValue()
  %52 = load double, double* %10, align 8
  %53 = fsub double %51, %52
  %54 = call i64 (...) @_glfwPlatformGetTimerFrequency()
  %55 = sitofp i64 %54 to double
  %56 = fdiv double %53, %55
  %57 = load double*, double** %3, align 8
  %58 = load double, double* %57, align 8
  %59 = fsub double %58, %56
  store double %59, double* %57, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %32
  %63 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %63, i32* %2, align 4
  br label %90

64:                                               ; preds = %32
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @EINTR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67, %64
  %72 = load double*, double** %3, align 8
  %73 = load double, double* %72, align 8
  %74 = fcmp ole double %73, 0.000000e+00
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %90

77:                                               ; preds = %71
  br label %89

78:                                               ; preds = %29
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @select(i32 %79, i32* %4, i32* null, i32* null, %struct.timeval* null)
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @errno, align 4
  %84 = load i32, i32* @EINTR, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %78
  %87 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %87, i32* %2, align 4
  br label %90

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %77
  br label %29

90:                                               ; preds = %86, %75, %62
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @ConnectionNumber(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local double @_glfwPlatformGetTimerValue(...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @_glfwPlatformGetTimerFrequency(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
