; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_gears.c_reshape.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_gears.c_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reshape(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sitofp i32 %11 to float
  %13 = load i32, i32* %5, align 4
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %12, %14
  store float %15, float* %7, align 4
  store float 5.000000e+00, float* %9, align 4
  store float 3.000000e+01, float* %10, align 4
  %16 = load float, float* %9, align 4
  %17 = fmul float %16, 5.000000e-01
  store float %17, float* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @glViewport(i32 0, i32 0, i32 %18, i32 %19)
  %21 = load i32, i32* @GL_PROJECTION, align 4
  %22 = call i32 @glMatrixMode(i32 %21)
  %23 = call i32 (...) @glLoadIdentity()
  %24 = load float, float* %8, align 4
  %25 = fneg float %24
  %26 = load float, float* %8, align 4
  %27 = load float, float* %8, align 4
  %28 = fneg float %27
  %29 = load float, float* %7, align 4
  %30 = fmul float %28, %29
  %31 = load float, float* %8, align 4
  %32 = load float, float* %7, align 4
  %33 = fmul float %31, %32
  %34 = load float, float* %9, align 4
  %35 = load float, float* %10, align 4
  %36 = call i32 @glFrustum(float %25, float %26, float %30, float %33, float %34, float %35)
  %37 = load i32, i32* @GL_MODELVIEW, align 4
  %38 = call i32 @glMatrixMode(i32 %37)
  %39 = call i32 (...) @glLoadIdentity()
  %40 = call i32 @glTranslatef(double 0.000000e+00, double 0.000000e+00, double -2.000000e+01)
  ret void
}

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glFrustum(float, float, float, float, float, float) #1

declare dso_local i32 @glTranslatef(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
