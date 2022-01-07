; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_action_left_scroll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_action_left_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL = common dso_local global i32 0, align 4
@MENU_NAVIGATION_CTL_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_left_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_left_scroll(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = call i64 (...) @menu_navigation_get_selection()
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* @MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL, align 4
  %16 = call i32 (i32, ...) @menu_driver_ctl(i32 %15, i64* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @MAX(i64 %20, i32 2)
  %22 = sub nsw i32 %21, 2
  %23 = sdiv i32 %22, 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul i32 4, %25
  %27 = add i32 4, %26
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = sub i64 %33, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @menu_navigation_set_selection(i64 %37)
  %39 = call i32 @menu_driver_navigation_set(i32 1)
  br label %43

40:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  %41 = load i32, i32* @MENU_NAVIGATION_CTL_CLEAR, align 4
  %42 = call i32 (i32, ...) @menu_driver_ctl(i32 %41, i32* %13)
  br label %43

43:                                               ; preds = %40, %32
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_driver_ctl(i32, ...) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

declare dso_local i32 @menu_driver_navigation_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
