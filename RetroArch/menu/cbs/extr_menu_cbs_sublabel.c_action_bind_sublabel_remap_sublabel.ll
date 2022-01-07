; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_remap_sublabel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_remap_sublabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_SETTINGS_INPUT_DESC_BEGIN = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s #%d: %s\00", align 1
@MENU_ENUM_LABEL_VALUE_USER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_remap_sublabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_remap_sublabel(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %18 = sub i32 %16, %17
  %19 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %20 = add nsw i32 %19, 8
  %21 = udiv i32 %18, %20
  store i32 %21, i32* %15, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i32, i32* @MENU_ENUM_LABEL_VALUE_USER, align 4
  %25 = call i8* @msg_hash_to_str(i32 %24)
  %26 = load i32, i32* %15, align 4
  %27 = add i32 %26, 1
  %28 = load i32, i32* %15, align 4
  %29 = call i8* @input_config_get_device_display_name(i32 %28)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* %15, align 4
  %33 = call i8* @input_config_get_device_display_name(i32 %32)
  br label %46

34:                                               ; preds = %7
  %35 = load i32, i32* %15, align 4
  %36 = call i8* @input_config_get_device_name(i32 %35)
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = call i8* @input_config_get_device_name(i32 %39)
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE, align 4
  %43 = call i8* @msg_hash_to_str(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i8* [ %40, %38 ], [ %43, %41 ]
  br label %46

46:                                               ; preds = %44, %31
  %47 = phi i8* [ %33, %31 ], [ %45, %44 ]
  %48 = call i32 @snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27, i8* %47)
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i8* @input_config_get_device_display_name(i32) #1

declare dso_local i8* @input_config_get_device_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
