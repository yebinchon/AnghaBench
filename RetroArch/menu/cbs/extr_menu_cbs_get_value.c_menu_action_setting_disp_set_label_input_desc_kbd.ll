; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_input_desc_kbd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_input_desc_kbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32** }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_KBD_BEGIN = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_MAX_KEYS = common dso_local global i32 0, align 4
@key_descriptors = common dso_local global %struct.TYPE_7__* null, align 8
@RETROK_FIRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Keyboard %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_input_desc_kbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_input_desc_kbd(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
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
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_6__*, align 8
  %28 = alloca i32, align 4
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
  %29 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %21, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %22, align 8
  store i32 0, i32* %26, align 4
  %33 = call %struct.TYPE_6__* (...) @config_get_ptr()
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %27, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %10
  store i32 1, i32* %28, align 4
  br label %112

37:                                               ; preds = %10
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_BEGIN, align 4
  %40 = sub i32 %38, %39
  %41 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %26, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_BEGIN, align 4
  %45 = sub i32 %43, %44
  %46 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %47 = load i32, i32* %26, align 4
  %48 = mul i32 %46, %47
  %49 = sub i32 %45, %48
  store i32 %49, i32* %24, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %26, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %24, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %62

62:                                               ; preds = %78, %37
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* @RARCH_MAX_KEYS, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i32, i32* %25, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key_descriptors, align 8
  %70 = load i32, i32* %23, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %81

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %23, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %23, align 4
  br label %62

81:                                               ; preds = %76, %62
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key_descriptors, align 8
  %83 = load i32, i32* %23, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RETROK_FIRST, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = trunc i64 %30 to i32
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @key_descriptors, align 8
  %93 = load i32, i32* %23, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @snprintf(i8* %32, i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %97)
  %99 = load i8*, i8** %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @strlcpy(i8* %99, i8* %32, i64 %100)
  br label %106

102:                                              ; preds = %81
  %103 = load i8*, i8** %16, align 8
  %104 = load i64, i64* %17, align 8
  %105 = call i32 @strlcpy(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %102, %90
  %107 = load i32*, i32** %12, align 8
  store i32 19, i32* %107, align 4
  %108 = load i8*, i8** %19, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = load i64, i64* %20, align 8
  %111 = call i32 @strlcpy(i8* %108, i8* %109, i64 %110)
  store i32 0, i32* %28, align 4
  br label %112

112:                                              ; preds = %106, %36
  %113 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %28, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %112, %112
  ret void

116:                                              ; preds = %112
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @config_get_ptr(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
