; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_ghb_rescale_preview_image.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_ghb_rescale_preview_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { double, double, i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"preview_image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_rescale_preview_image(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @init_preview_image(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fcmp ole double %11, 0.000000e+00
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fcmp ole double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  br label %74

21:                                               ; preds = %13
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = fdiv double %27, %32
  store double %33, double* %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load double, double* %3, align 8
  %41 = fmul double %39, %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load double, double* %3, align 8
  %48 = fmul double %46, %47
  %49 = call i32 @preview_set_render_size(%struct.TYPE_9__* %34, double %41, double %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @set_mini_preview_image(%struct.TYPE_9__* %50, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @do_preview_scaling(%struct.TYPE_9__* %57, i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @GHB_WIDGET(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %71, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @gtk_widget_queue_draw(i32* %72)
  br label %74

74:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @init_preview_image(%struct.TYPE_9__*) #1

declare dso_local i32 @preview_set_render_size(%struct.TYPE_9__*, double, double) #1

declare dso_local i32 @set_mini_preview_image(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @do_preview_scaling(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_queue_draw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
