; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_audio_bitrate_opts_filter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_audio_bitrate_opts_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"audio_bitrate_opts_filter ()\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_audio_bitrate_opts_filter(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @g_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @gtk_combo_box_get_model(i32* %13)
  %15 = call i32* @GTK_LIST_STORE(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @GTK_TREE_MODEL(i32* %16)
  %18 = call i64 @gtk_tree_model_get_iter_first(i32 %17, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @GTK_TREE_MODEL(i32* %22)
  %24 = call i32 @gtk_tree_model_get(i32 %23, i32* %7, i32 3, i64* %9, i32 -1)
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %21
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @gtk_list_store_set(i32* %35, i32* %7, i32 1, i32 %36, i32 -1)
  br label %42

38:                                               ; preds = %29
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @gtk_list_store_set(i32* %39, i32* %7, i32 1, i32 %40, i32 -1)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @GTK_TREE_MODEL(i32* %43)
  %45 = call i32 @gtk_tree_model_iter_next(i32 %44, i32* %7)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %21, label %53

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i64 @gtk_tree_model_get_iter_first(i32, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, i64*, i32) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gtk_tree_model_iter_next(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
