; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_toggle_gamepad_combo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_toggle_gamepad_combo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@MENU_ENUM_LABEL_VALUE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Down + L1 + R1 + Y\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"L3 + R3\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"L1 + R1 + Start + Select\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Start + Select\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"L3 + R\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"L + R\00", align 1
@MENU_ENUM_LABEL_VALUE_HOLD_START = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DOWN_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i64)* @setting_get_string_representation_toggle_gamepad_combo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_get_string_representation_toggle_gamepad_combo(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %59

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %59 [
    i32 129, label %17
    i32 135, label %23
    i32 131, label %27
    i32 133, label %31
    i32 128, label %35
    i32 132, label %39
    i32 130, label %43
    i32 134, label %47
    i32 136, label %53
  ]

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NONE, align 4
  %20 = call i8* @msg_hash_to_str(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @strlcpy(i8* %18, i8* %20, i64 %21)
  br label %59

23:                                               ; preds = %10
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @strlcpy(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %59

27:                                               ; preds = %10
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @strlcpy(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %59

31:                                               ; preds = %10
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @strlcpy(i8* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %59

35:                                               ; preds = %10
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @strlcpy(i8* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  br label %59

39:                                               ; preds = %10
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @strlcpy(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %41)
  br label %59

43:                                               ; preds = %10
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @strlcpy(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %45)
  br label %59

47:                                               ; preds = %10
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HOLD_START, align 4
  %50 = call i8* @msg_hash_to_str(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @strlcpy(i8* %48, i8* %50, i64 %51)
  br label %59

53:                                               ; preds = %10
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DOWN_SELECT, align 4
  %56 = call i8* @msg_hash_to_str(i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @strlcpy(i8* %54, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %9, %10, %53, %47, %43, %39, %35, %31, %27, %23, %17
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
