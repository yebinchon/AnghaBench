; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_core_options.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_core_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_CTL_CORE_OPTIONS_LIST_GET = common dso_local global i32 0, align 4
@MENU_SETTINGS_CORE_OPTION_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MENU_ENUM_LABEL_ENABLED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ON = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DISABLED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_core_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_core_options(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i64 %9, i64* %20, align 8
  store i32* null, i32** %21, align 8
  store i8* null, i8** %22, align 8
  %23 = load i8*, i8** %16, align 8
  store i8 0, i8* %23, align 1
  %24 = load i32*, i32** %12, align 8
  store i32 19, i32* %24, align 4
  %25 = load i32, i32* @RARCH_CTL_CORE_OPTIONS_LIST_GET, align 4
  %26 = call i64 @rarch_ctl(i32 %25, i32** %21)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %10
  %29 = load i32*, i32** %21, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @MENU_SETTINGS_CORE_OPTION_START, align 4
  %32 = sub i32 %30, %31
  %33 = call i8* @core_option_manager_get_val_label(i32* %29, i32 %32)
  store i8* %33, i8** %22, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @strlcpy(i8* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i8*, i8** %22, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %28
  %40 = load i8*, i8** %22, align 8
  %41 = load i32, i32* @MENU_ENUM_LABEL_ENABLED, align 4
  %42 = call i8* @msg_hash_to_str(i32 %41)
  %43 = call i64 @string_is_equal(i8* %40, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ON, align 4
  %47 = call i8* @msg_hash_to_str(i32 %46)
  store i8* %47, i8** %22, align 8
  br label %58

48:                                               ; preds = %39
  %49 = load i8*, i8** %22, align 8
  %50 = load i32, i32* @MENU_ENUM_LABEL_DISABLED, align 4
  %51 = call i8* @msg_hash_to_str(i32 %50)
  %52 = call i64 @string_is_equal(i8* %49, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %56 = call i8* @msg_hash_to_str(i32 %55)
  store i8* %56, i8** %22, align 8
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i8*, i8** %16, align 8
  %60 = load i8*, i8** %22, align 8
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @strlcpy(i8* %59, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %28
  br label %64

64:                                               ; preds = %63, %10
  %65 = load i8*, i8** %19, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @strlcpy(i8* %65, i8* %66, i64 %67)
  ret void
}

declare dso_local i64 @rarch_ctl(i32, i32**) #1

declare dso_local i8* @core_option_manager_get_val_label(i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
