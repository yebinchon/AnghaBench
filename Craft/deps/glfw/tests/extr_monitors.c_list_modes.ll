; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_monitors.c_list_modes.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_monitors.c_list_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float }

@.str = private unnamed_addr constant [15 x i8] c"Name: %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Current mode: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Virtual position: %i %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Physical size: %i x %i mm (%0.2f dpi)\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Modes:\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%3u: %s\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" (current mode)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @list_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_modes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_7__* @glfwGetVideoMode(i32* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_7__* @glfwGetVideoModes(i32* %13, i32* %3)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @glfwGetMonitorPos(i32* %15, i32* %4, i32* %5)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @glfwGetMonitorPhysicalSize(i32* %17, i32* %6, i32* %7)
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @glfwGetMonitorName(i32* %19)
  %21 = call i32* (...) @glfwGetPrimaryMonitor()
  %22 = load i32*, i32** %2, align 8
  %23 = icmp eq i32* %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = call i8* @format_mode(%struct.TYPE_7__* %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fmul float %37, 0x4039666660000000
  %39 = load i32, i32* %6, align 4
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %38, %40
  %42 = fpext float %41 to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %33, i32 %34, double %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %68, %1
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = call i8* @format_mode(%struct.TYPE_7__* %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %50, i8* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = call i64 @memcmp(%struct.TYPE_7__* %57, %struct.TYPE_7__* %61, i32 4)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %49
  %67 = call i32 @putchar(i8 signext 10)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %45

71:                                               ; preds = %45
  ret void
}

declare dso_local %struct.TYPE_7__* @glfwGetVideoMode(i32*) #1

declare dso_local %struct.TYPE_7__* @glfwGetVideoModes(i32*, i32*) #1

declare dso_local i32 @glfwGetMonitorPos(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetMonitorPhysicalSize(i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i8* @format_mode(%struct.TYPE_7__*) #1

declare dso_local i64 @memcmp(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
