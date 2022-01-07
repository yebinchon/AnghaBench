; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_monitors.c_test_modes.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_monitors.c_test_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i64 }

@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Testing mode %u on monitor %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Video Mode Test\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to enter mode %u: %s\0A\00", align 1
@framebuffer_size_callback = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"User terminated program\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GL_RED_BITS = common dso_local global i32 0, align 4
@GL_GREEN_BITS = common dso_local global i32 0, align 4
@GL_BLUE_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"*** Color bit mismatch: (%i %i %i) instead of (%i %i %i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"*** Size mismatch: %ix%i instead of %ix%i\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Closing window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_modes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_4__* @glfwGetVideoModes(i32* %9, i32* %4)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %172, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %175

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load i32, i32* @GLFW_RED_BITS, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @glfwWindowHint(i32 %20, i64 %23)
  %25 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @glfwWindowHint(i32 %25, i64 %28)
  %30 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @glfwWindowHint(i32 %30, i64 %33)
  %35 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @glfwWindowHint(i32 %35, i64 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call i8* @glfwGetMonitorName(i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = call i8* @format_mode(%struct.TYPE_4__* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %42, i8* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (...) @glfwGetPrimaryMonitor()
  %53 = call i32* @glfwCreateWindow(i32 %48, i64 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32* null)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %15
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = call i8* @format_mode(%struct.TYPE_4__* %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %59)
  br label %172

61:                                               ; preds = %15
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @framebuffer_size_callback, align 4
  %64 = call i32 @glfwSetFramebufferSizeCallback(i32* %62, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @key_callback, align 4
  %67 = call i32 @glfwSetKeyCallback(i32* %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @glfwMakeContextCurrent(i32* %68)
  %70 = call i32 @glfwSwapInterval(i32 1)
  %71 = call i32 @glfwSetTime(double 0.000000e+00)
  br label %72

72:                                               ; preds = %89, %61
  %73 = call double (...) @glfwGetTime()
  %74 = fcmp olt double %73, 5.000000e+00
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %77 = call i32 @glClear(i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @glfwSwapBuffers(i32* %78)
  %80 = call i32 (...) @glfwPollEvents()
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @glfwWindowShouldClose(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 (...) @glfwTerminate()
  %87 = load i32, i32* @EXIT_SUCCESS, align 4
  %88 = call i32 @exit(i32 %87) #3
  unreachable

89:                                               ; preds = %75
  br label %72

90:                                               ; preds = %72
  %91 = load i32, i32* @GL_RED_BITS, align 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %93 = call i32 @glGetIntegerv(i32 %91, i64* %92)
  %94 = load i32, i32* @GL_GREEN_BITS, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %96 = call i32 @glGetIntegerv(i32 %94, i64* %95)
  %97 = load i32, i32* @GL_BLUE_BITS, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %99 = call i32 @glGetIntegerv(i32 %97, i64* %98)
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %103 = call i32 @glfwGetWindowSize(i32* %100, i32* %101, i64* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %124, label %110

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %117, %110, %90
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %126, i64 %128, i64 %130, i64 %133, i64 %136, i64 %139)
  br label %141

141:                                              ; preds = %124, %117
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %148, %141
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %157, i64 %159, i32 %162, i64 %165)
  br label %167

167:                                              ; preds = %155, %148
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @glfwDestroyWindow(i32* %169)
  store i32* null, i32** %5, align 8
  %171 = call i32 (...) @glfwPollEvents()
  br label %172

172:                                              ; preds = %167, %56
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %11

175:                                              ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_4__* @glfwGetVideoModes(i32*, i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

declare dso_local i8* @format_mode(%struct.TYPE_4__*) #1

declare dso_local i32* @glfwCreateWindow(i32, i64, i8*, i32, i32*) #1

declare dso_local i32 @glfwGetPrimaryMonitor(...) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetTime(double) #1

declare dso_local double @glfwGetTime(...) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i64 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glGetIntegerv(i32, i64*) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i64*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
