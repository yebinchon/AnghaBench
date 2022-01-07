; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_update_setting.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_update_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subtitle_update_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subtitle_update_setting(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32* @subtitle_get_selected_settings(i32* %8, i32* null)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ghb_dict_set(i32* %16, i8* %17, i32* %18)
  br label %24

20:                                               ; preds = %12
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @ghb_dict_remove(i32* %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @subtitle_list_refresh_selected(i32* %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ghb_update_summary_info(i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ghb_live_reset(i32* %30)
  br label %34

32:                                               ; preds = %3
  %33 = call i32 @ghb_value_free(i32** %4)
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i32*, i32** %7, align 8
  ret i32* %35
}

declare dso_local i32* @subtitle_get_selected_settings(i32*, i32*) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @ghb_dict_remove(i32*, i8*) #1

declare dso_local i32 @subtitle_list_refresh_selected(i32*, i32*) #1

declare dso_local i32 @ghb_update_summary_info(i32*) #1

declare dso_local i32 @ghb_live_reset(i32*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
