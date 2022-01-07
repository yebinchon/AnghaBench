; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_remap_kbd_sublabel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_remap_kbd_sublabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_SETTINGS_INPUT_DESC_KBD_BEGIN = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s #%d: %s\00", align 1
@MENU_ENUM_LABEL_VALUE_USER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_remap_kbd_sublabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_remap_kbd_sublabel(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
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
  %17 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_BEGIN, align 4
  %18 = sub i32 %16, %17
  %19 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i32, i32* @MENU_ENUM_LABEL_VALUE_USER, align 4
  %24 = call i8* @msg_hash_to_str(i32 %23)
  %25 = load i32, i32* %15, align 4
  %26 = add i32 %25, 1
  %27 = load i32, i32* %15, align 4
  %28 = call i8* @input_config_get_device_display_name(i32 %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = call i8* @input_config_get_device_display_name(i32 %31)
  br label %45

33:                                               ; preds = %7
  %34 = load i32, i32* %15, align 4
  %35 = call i8* @input_config_get_device_name(i32 %34)
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = call i8* @input_config_get_device_name(i32 %38)
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE, align 4
  %42 = call i8* @msg_hash_to_str(i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i8* [ %39, %37 ], [ %42, %40 ]
  br label %45

45:                                               ; preds = %43, %30
  %46 = phi i8* [ %32, %30 ], [ %44, %43 ]
  %47 = call i32 @snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26, i8* %46)
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
