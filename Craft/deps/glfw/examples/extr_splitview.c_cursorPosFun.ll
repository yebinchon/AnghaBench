; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_cursorPosFun.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_splitview.c_cursorPosFun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@active_view = common dso_local global i32 0, align 4
@ypos = common dso_local global double 0.000000e+00, align 8
@rot_x = common dso_local global i32 0, align 4
@xpos = common dso_local global double 0.000000e+00, align 8
@rot_z = common dso_local global i32 0, align 4
@do_redraw = common dso_local global i32 0, align 4
@rot_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double, double)* @cursorPosFun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursorPosFun(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @glfwGetWindowSize(i32* %12, i32* %7, i32* %8)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @glfwGetFramebufferSize(i32* %14, i32* %9, i32* %10)
  %16 = load i32, i32* %9, align 4
  %17 = sitofp i32 %16 to double
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %17, %19
  store double %20, double* %11, align 8
  %21 = load double, double* %11, align 8
  %22 = load double, double* %5, align 8
  %23 = fmul double %22, %21
  store double %23, double* %5, align 8
  %24 = load double, double* %11, align 8
  %25 = load double, double* %6, align 8
  %26 = fmul double %25, %24
  store double %26, double* %6, align 8
  %27 = load i32, i32* @active_view, align 4
  switch i32 %27, label %67 [
    i32 1, label %28
    i32 3, label %41
    i32 4, label %54
  ]

28:                                               ; preds = %3
  %29 = load double, double* %6, align 8
  %30 = load double, double* @ypos, align 8
  %31 = fsub double %29, %30
  %32 = fptosi double %31 to i32
  %33 = load i32, i32* @rot_x, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* @rot_x, align 4
  %35 = load double, double* %5, align 8
  %36 = load double, double* @xpos, align 8
  %37 = fsub double %35, %36
  %38 = fptosi double %37 to i32
  %39 = load i32, i32* @rot_z, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @rot_z, align 4
  store i32 1, i32* @do_redraw, align 4
  br label %68

41:                                               ; preds = %3
  %42 = load double, double* %6, align 8
  %43 = load double, double* @ypos, align 8
  %44 = fsub double %42, %43
  %45 = fptosi double %44 to i32
  %46 = load i32, i32* @rot_x, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* @rot_x, align 4
  %48 = load double, double* %5, align 8
  %49 = load double, double* @xpos, align 8
  %50 = fsub double %48, %49
  %51 = fptosi double %50 to i32
  %52 = load i32, i32* @rot_y, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* @rot_y, align 4
  store i32 1, i32* @do_redraw, align 4
  br label %68

54:                                               ; preds = %3
  %55 = load double, double* %5, align 8
  %56 = load double, double* @xpos, align 8
  %57 = fsub double %55, %56
  %58 = fptosi double %57 to i32
  %59 = load i32, i32* @rot_y, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* @rot_y, align 4
  %61 = load double, double* %6, align 8
  %62 = load double, double* @ypos, align 8
  %63 = fsub double %61, %62
  %64 = fptosi double %63 to i32
  %65 = load i32, i32* @rot_z, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* @rot_z, align 4
  store i32 1, i32* @do_redraw, align 4
  br label %68

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67, %54, %41, %28
  %69 = load double, double* %5, align 8
  store double %69, double* @xpos, align 8
  %70 = load double, double* %6, align 8
  store double %70, double* @ypos, align 8
  ret void
}

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
