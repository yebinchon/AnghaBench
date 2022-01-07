; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_framebuffer_size_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_framebuffer_size_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_PROJECTION = common dso_local global i32 0, align 4
@M_PI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @framebuffer_size_callback(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store float 1.000000e+00, float* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to float
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to float
  %16 = fdiv float %13, %15
  store float %16, float* %7, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @glViewport(i32 0, i32 0, i32 %18, i32 %19)
  %21 = load i32, i32* @GL_PROJECTION, align 4
  %22 = call i32 @glMatrixMode(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @M_PI, align 8
  %25 = sitofp i64 %24 to float
  %26 = fmul float 6.000000e+01, %25
  %27 = fdiv float %26, 1.800000e+02
  %28 = load float, float* %7, align 4
  %29 = call i32 @mat4x4_perspective(i64 %23, float %27, float %28, float 1.000000e+00, float 1.024000e+03)
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @glLoadMatrixf(i32* %31)
  ret void
}

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @mat4x4_perspective(i64, float, float, float, float) #1

declare dso_local i32 @glLoadMatrixf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
