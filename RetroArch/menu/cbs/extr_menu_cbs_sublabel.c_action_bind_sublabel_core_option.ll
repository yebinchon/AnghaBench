; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_core_option.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_core_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_CTL_CORE_OPTIONS_LIST_GET = common dso_local global i32 0, align 4
@MENU_SETTINGS_CORE_OPTION_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_core_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_core_option(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* null, i32** %16, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32, i32* @RARCH_CTL_CORE_OPTIONS_LIST_GET, align 4
  %19 = call i32 @rarch_ctl(i32 %18, i32** %16)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %37

22:                                               ; preds = %7
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MENU_SETTINGS_CORE_OPTION_START, align 4
  %26 = sub i32 %24, %25
  %27 = call i8* @core_option_manager_get_info(i32* %23, i32 %26)
  store i8* %27, i8** %17, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @string_is_empty(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %14, align 8
  %33 = load i8*, i8** %17, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @strlcpy(i8* %32, i8* %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %22
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @rarch_ctl(i32, i32**) #1

declare dso_local i8* @core_option_manager_get_info(i32*, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
