; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_threads.c_thread_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_threads.c_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float, float, i32* }

@running = common dso_local global i64 0, align 8
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @glfwMakeContextCurrent(i32* %9)
  %11 = call i32 @glfwSwapInterval(i32 1)
  br label %12

12:                                               ; preds = %15, %1
  %13 = load i64, i64* @running, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = call float (...) @glfwGetTime()
  %17 = fmul float %16, 2.000000e+00
  %18 = call i32 @sin(float %17)
  %19 = call i64 @fabs(i32 %18)
  %20 = sitofp i64 %19 to float
  store float %20, float* %4, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 8
  %24 = load float, float* %4, align 4
  %25 = fmul float %23, %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = load float, float* %4, align 4
  %30 = fmul float %28, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load float, float* %32, align 8
  %34 = load float, float* %4, align 4
  %35 = fmul float %33, %34
  %36 = call i32 @glClearColor(float %25, float %30, float %35, float 0.000000e+00)
  %37 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %38 = call i32 @glClear(i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @glfwSwapBuffers(i32* %41)
  br label %12

43:                                               ; preds = %12
  %44 = call i32 @glfwMakeContextCurrent(i32* null)
  ret i32 0
}

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i32 @sin(float) #1

declare dso_local float @glfwGetTime(...) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
