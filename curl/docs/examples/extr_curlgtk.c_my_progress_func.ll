; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_curlgtk.c_my_progress_func.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_curlgtk.c_my_progress_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @my_progress_func(i32* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %11 = call i32 (...) @gdk_threads_enter()
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @GTK_PROGRESS(i32* %12)
  %14 = load double, double* %8, align 8
  %15 = fmul double %14, 1.000000e+02
  %16 = load double, double* %7, align 8
  %17 = fdiv double %15, %16
  %18 = call i32 @gtk_progress_set_value(i32 %13, double %17)
  %19 = call i32 (...) @gdk_threads_leave()
  ret i32 0
}

declare dso_local i32 @gdk_threads_enter(...) #1

declare dso_local i32 @gtk_progress_set_value(i32, double) #1

declare dso_local i32 @GTK_PROGRESS(i32*) #1

declare dso_local i32 @gdk_threads_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
