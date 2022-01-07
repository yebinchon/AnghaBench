; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_cbs_init_bind_ok.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_cbs_init_bind_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@action_ok_lookup_setting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_ok(i32* %0, i8* %1, i8* %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %38

19:                                               ; preds = %7
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @action_ok_lookup_setting, align 4
  %22 = call i32 @BIND_ACTION_OK(i32* %20, i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i64 @menu_cbs_init_bind_ok_compare_label(i32* %23, i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @menu_cbs_init_bind_ok_compare_type(i32* %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %38

37:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36, %28, %18
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @BIND_ACTION_OK(i32*, i32) #1

declare dso_local i64 @menu_cbs_init_bind_ok_compare_label(i32*, i8*, i32) #1

declare dso_local i64 @menu_cbs_init_bind_ok_compare_type(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
