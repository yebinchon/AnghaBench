; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_list_flush_stack.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_list_flush_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@menu_driver_selection_ptr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i32)* @menu_list_flush_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_list_flush_stack(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32* @menu_list_get(i32* %16, i32 %18)
  store i32* %19, i32** %14, align 8
  %20 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %21 = call i32 @menu_entries_ctl(i32 %20, i32* %9)
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @file_list_get_last(i32* %22, i8** %10, i8** %11, i32* %12, i64* %13)
  br label %24

24:                                               ; preds = %38, %4
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @menu_list_flush_stack_type(i8* %25, i8* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load i64, i64* @menu_driver_selection_ptr, align 8
  store i64 %32, i64* %15, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @menu_list_pop_stack(i32* %33, i64 %34, i64* %15, i32 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %46

38:                                               ; preds = %31
  %39 = load i64, i64* %15, align 8
  store i64 %39, i64* @menu_driver_selection_ptr, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32* @menu_list_get(i32* %40, i32 %42)
  store i32* %43, i32** %14, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @file_list_get_last(i32* %44, i8** %10, i8** %11, i32* %12, i64* %13)
  br label %24

46:                                               ; preds = %37, %24
  ret void
}

declare dso_local i32* @menu_list_get(i32*, i32) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @file_list_get_last(i32*, i8**, i8**, i32*, i64*) #1

declare dso_local i64 @menu_list_flush_stack_type(i8*, i8*, i32, i32) #1

declare dso_local i32 @menu_list_pop_stack(i32*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
