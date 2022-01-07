; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_audio_samplerate_opts_filter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_audio_samplerate_opts_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_audio_samplerate_opts_filter(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @gtk_combo_box_get_model(i32* %8)
  %10 = call i32* @GTK_LIST_STORE(i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @GTK_TREE_MODEL(i32* %11)
  %13 = call i32 @gtk_tree_model_get_iter_first(i32 %12, i32* %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %38

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @GTK_TREE_MODEL(i32* %18)
  %20 = call i32 @gtk_tree_model_get(i32 %19, i32* %5, i32 3, double* %7, i32 -1)
  %21 = load i32*, i32** %6, align 8
  %22 = load double, double* %7, align 8
  %23 = fcmp oeq double %22, 0.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load double, double* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @hb_audio_samplerate_is_supported(double %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  %32 = call i32 @gtk_list_store_set(i32* %21, i32* %5, i32 1, i32 %31, i32 -1)
  br label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @GTK_TREE_MODEL(i32* %34)
  %36 = call i64 @gtk_tree_model_iter_next(i32 %35, i32* %5)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %17, label %38

38:                                               ; preds = %15, %33
  ret void
}

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_tree_model_get_iter_first(i32, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, double*, i32) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @hb_audio_samplerate_is_supported(double, i32) #1

declare dso_local i64 @gtk_tree_model_iter_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
