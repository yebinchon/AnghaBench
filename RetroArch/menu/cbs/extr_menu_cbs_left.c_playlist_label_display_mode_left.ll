; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_playlist_label_display_mode_left.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_playlist_label_display_mode_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_DISPLAY_MODE_DEFAULT = common dso_local global i32 0, align 4
@LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @playlist_label_display_mode_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playlist_label_display_mode_left(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32* (...) @playlist_get_cached()
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @playlist_get_label_display_mode(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @LABEL_DISPLAY_MODE_DEFAULT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @playlist_set_label_display_mode(i32* %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @playlist_write_file(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_get_label_display_mode(i32*) #1

declare dso_local i32 @playlist_set_label_display_mode(i32*, i32) #1

declare dso_local i32 @playlist_write_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
