; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_cursor.c_cursor_position_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_cursor.c_cursor_position_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"%0.3f: Cursor position: %f %f (%+f %+f)\0A\00", align 1
@cursor_x = common dso_local global double 0.000000e+00, align 8
@cursor_y = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double, double)* @cursor_position_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursor_position_callback(i32* %0, double %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = call double (...) @glfwGetTime()
  %8 = load double, double* %5, align 8
  %9 = load double, double* %6, align 8
  %10 = load double, double* %5, align 8
  %11 = load double, double* @cursor_x, align 8
  %12 = fsub double %10, %11
  %13 = load double, double* %6, align 8
  %14 = load double, double* @cursor_y, align 8
  %15 = fsub double %13, %14
  %16 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), double %7, double %8, double %9, double %12, double %15)
  %17 = load double, double* %5, align 8
  store double %17, double* @cursor_x, align 8
  %18 = load double, double* %6, align 8
  store double %18, double* @cursor_y, align 8
  ret void
}

declare dso_local i32 @printf(i8*, double, double, double, double, double) #1

declare dso_local double @glfwGetTime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
