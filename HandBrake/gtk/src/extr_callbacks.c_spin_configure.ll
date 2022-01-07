; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_spin_configure.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_spin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, double, double, double)* @spin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spin_configure(%struct.TYPE_3__* %0, i8* %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @GHB_WIDGET(i32 %18, i8* %19)
  %21 = call i32* @GTK_SPIN_BUTTON(i32 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32* @gtk_spin_button_get_adjustment(i32* %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call double @gtk_adjustment_get_step_increment(i32* %24)
  store double %25, double* %13, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call double @gtk_adjustment_get_page_increment(i32* %26)
  store double %27, double* %14, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call double @gtk_adjustment_get_page_size(i32* %28)
  store double %29, double* %15, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load double, double* %8, align 8
  %32 = load double, double* %9, align 8
  %33 = load double, double* %10, align 8
  %34 = load double, double* %13, align 8
  %35 = load double, double* %14, align 8
  %36 = load double, double* %15, align 8
  %37 = call i32 @adjustment_configure(i32* %30, double %31, double %32, double %33, double %34, double %35, double %36)
  ret void
}

declare dso_local i32* @GTK_SPIN_BUTTON(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_spin_button_get_adjustment(i32*) #1

declare dso_local double @gtk_adjustment_get_step_increment(i32*) #1

declare dso_local double @gtk_adjustment_get_page_increment(i32*) #1

declare dso_local double @gtk_adjustment_get_page_size(i32*) #1

declare dso_local i32 @adjustment_configure(i32*, double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
