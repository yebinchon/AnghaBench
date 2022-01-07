; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_update_setting.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_update_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_updates = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_update_setting(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* @block_updates, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @ghb_value_free(i32** %4)
  br label %41

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @audio_get_selected_settings(i32* %13, i32* null)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ghb_dict_set(i32* %21, i8* %22, i32* %23)
  br label %29

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @ghb_dict_remove(i32* %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @audio_deps(i32* %30, i32* %31, i32* null)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @ghb_update_summary_info(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ghb_audio_list_refresh_selected(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ghb_live_reset(i32* %37)
  br label %41

39:                                               ; preds = %12
  %40 = call i32 @ghb_value_free(i32** %4)
  br label %41

41:                                               ; preds = %10, %39, %29
  ret void
}

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32* @audio_get_selected_settings(i32*, i32*) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @ghb_dict_remove(i32*, i8*) #1

declare dso_local i32 @audio_deps(i32*, i32*, i32*) #1

declare dso_local i32 @ghb_update_summary_info(i32*) #1

declare dso_local i32 @ghb_audio_list_refresh_selected(i32*) #1

declare dso_local i32 @ghb_live_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
