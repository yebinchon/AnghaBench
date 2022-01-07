; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwPlatformSetGammaRamp.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c__glfwPlatformSetGammaRamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Win32: Gamma ramp size must be 256\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 68, i32 73, i32 83, i32 80, i32 76, i32 65, i32 89, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetGammaRamp(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [768 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 256
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %13 = call i32 @_glfwInputError(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %43

14:                                               ; preds = %2
  %15 = getelementptr inbounds [768 x i32], [768 x i32]* %6, i64 0, i64 0
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32* %16, i32 %19, i32 512)
  %21 = getelementptr inbounds [768 x i32], [768 x i32]* %6, i64 0, i64 0
  %22 = getelementptr inbounds i32, i32* %21, i64 256
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i32* %22, i32 %25, i32 512)
  %27 = getelementptr inbounds [768 x i32], [768 x i32]* %6, i64 0, i64 0
  %28 = getelementptr inbounds i32, i32* %27, i64 512
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %28, i32 %31, i32 512)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CreateDCW(i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 %36, i32* null, i32* null)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds [768 x i32], [768 x i32]* %6, i64 0, i64 0
  %40 = call i32 @SetDeviceGammaRamp(i32 %38, i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @DeleteDC(i32 %41)
  br label %43

43:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @CreateDCW(i8*, i32, i32*, i32*) #1

declare dso_local i32 @SetDeviceGammaRamp(i32, i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
