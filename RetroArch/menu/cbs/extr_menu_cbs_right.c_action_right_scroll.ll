; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_scroll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL = common dso_local global i32 0, align 4
@MENU_NAVIGATION_CTL_SET_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_right_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_right_scroll(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = call i64 (...) @menu_navigation_get_selection()
  store i64 %13, i64* %11, align 8
  %14 = load i32, i32* @MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL, align 4
  %15 = call i32 @menu_driver_ctl(i32 %14, i64* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @MAX(i64 %19, i32 2)
  %21 = sub nsw i32 %20, 2
  %22 = sdiv i32 %21, 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul i32 4, %24
  %26 = add i32 4, %25
  store i32 %26, i32* %10, align 4
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = call i64 (...) @menu_entries_get_size()
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @menu_navigation_set_selection(i64 %38)
  %40 = call i32 @menu_driver_navigation_set(i32 1)
  br label %48

41:                                               ; preds = %18
  %42 = call i64 (...) @menu_entries_get_size()
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @MENU_NAVIGATION_CTL_SET_LAST, align 4
  %46 = call i32 @menu_driver_ctl(i32 %45, i64* null)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %33
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_driver_ctl(i32, i64*) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

declare dso_local i32 @menu_driver_navigation_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
