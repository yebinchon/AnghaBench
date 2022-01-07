; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_scale_configure.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_scale_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_scale_configure(%struct.TYPE_3__* %0, i8* %1, double %2, double %3, double %4, double %5, double %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i8* %1, i8** %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @GHB_WIDGET(i32 %24, i8* %25)
  %27 = call i32* @GTK_SCALE(i32 %26)
  store i32* %27, i32** %19, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @gtk_scale_set_draw_value(i32* %28, i32 %29)
  %31 = load i32*, i32** %19, align 8
  %32 = call i32 @GTK_RANGE(i32* %31)
  %33 = call i32* @gtk_range_get_adjustment(i32 %32)
  store i32* %33, i32** %20, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = call double @gtk_adjustment_get_page_size(i32* %34)
  store double %35, double* %21, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load double, double* %12, align 8
  %38 = load double, double* %13, align 8
  %39 = load double, double* %14, align 8
  %40 = load double, double* %15, align 8
  %41 = load double, double* %16, align 8
  %42 = load double, double* %21, align 8
  %43 = call i32 @adjustment_configure(i32* %36, double %37, double %38, double %39, double %40, double %41, double %42)
  %44 = load i32*, i32** %19, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @gtk_scale_set_digits(i32* %44, i32 %45)
  %47 = load i32*, i32** %19, align 8
  %48 = call i32 @GTK_RANGE(i32* %47)
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @gtk_range_set_inverted(i32 %48, i32 %49)
  %51 = load i32*, i32** %19, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @gtk_scale_set_draw_value(i32* %51, i32 %52)
  ret void
}

declare dso_local i32* @GTK_SCALE(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_scale_set_draw_value(i32*, i32) #1

declare dso_local i32* @gtk_range_get_adjustment(i32) #1

declare dso_local i32 @GTK_RANGE(i32*) #1

declare dso_local double @gtk_adjustment_get_page_size(i32*) #1

declare dso_local i32 @adjustment_configure(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @gtk_scale_set_digits(i32*, i32) #1

declare dso_local i32 @gtk_range_set_inverted(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
