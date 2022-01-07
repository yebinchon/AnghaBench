; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_get_entry_value_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_get_entry_value_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@MUI_ENTRY_VALUE_NONE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DISABLED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_OFF = common dso_local global i32 0, align 4
@MUI_TEXTURE_SWITCH_OFF = common dso_local global i64 0, align 8
@MUI_ENTRY_VALUE_SWITCH_OFF = common dso_local global i32 0, align 4
@MUI_ENTRY_VALUE_TEXT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ENABLED = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ON = common dso_local global i32 0, align 4
@MUI_TEXTURE_SWITCH_ON = common dso_local global i64 0, align 8
@MUI_ENTRY_VALUE_SWITCH_ON = common dso_local global i32 0, align 4
@MENU_SETTING_DROPDOWN_ITEM = common dso_local global i32 0, align 4
@MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL = common dso_local global i32 0, align 4
@MUI_ENTRY_VALUE_CHECKMARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @materialui_get_entry_value_type(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @MUI_ENTRY_VALUE_NONE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @string_is_empty(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @MENU_ENUM_LABEL_DISABLED, align 4
  %19 = call i32 @msg_hash_to_str(i32 %18)
  %20 = call i64 @string_is_equal(i8* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @MENU_ENUM_LABEL_VALUE_OFF, align 4
  %25 = call i32 @msg_hash_to_str(i32 %24)
  %26 = call i64 @string_is_equal(i8* %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @MUI_TEXTURE_SWITCH_OFF, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @MUI_ENTRY_VALUE_SWITCH_OFF, align 4
  store i32 %38, i32* %11, align 4
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @MUI_ENTRY_VALUE_TEXT, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %75

42:                                               ; preds = %22
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @MENU_ENUM_LABEL_ENABLED, align 4
  %45 = call i32 @msg_hash_to_str(i32 %44)
  %46 = call i64 @string_is_equal(i8* %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ON, align 4
  %51 = call i32 @msg_hash_to_str(i32 %50)
  %52 = call i64 @string_is_equal(i8* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @MUI_TEXTURE_SWITCH_ON, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @MUI_ENTRY_VALUE_SWITCH_ON, align 4
  store i32 %64, i32* %11, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @MUI_ENTRY_VALUE_TEXT, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %63
  br label %74

68:                                               ; preds = %48
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %71 [
    i32 133, label %70
    i32 139, label %70
    i32 132, label %70
    i32 138, label %70
    i32 135, label %70
    i32 128, label %70
    i32 137, label %70
    i32 129, label %70
    i32 136, label %70
    i32 130, label %70
    i32 134, label %70
    i32 131, label %70
  ]

70:                                               ; preds = %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68
  br label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @MUI_ENTRY_VALUE_TEXT, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %70
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %41
  br label %76

76:                                               ; preds = %75, %5
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MENU_SETTING_DROPDOWN_ITEM, align 4
  %82 = icmp uge i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL, align 4
  %86 = icmp ule i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @MUI_ENTRY_VALUE_CHECKMARK, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %83, %79, %76
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
