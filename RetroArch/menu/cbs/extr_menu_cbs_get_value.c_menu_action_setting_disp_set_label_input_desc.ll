; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_input_desc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_action_setting_disp_set_label_input_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32** }

@MENU_SETTINGS_INPUT_DESC_BEGIN = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_UNMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*, i8*, i64, i8*, i8*, i64)* @menu_action_setting_disp_set_label_input_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_action_setting_disp_set_label_input_desc(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9) #0 {
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
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca [256 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
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
  %28 = call %struct.TYPE_8__* (...) @runloop_get_system_info()
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %21, align 8
  %29 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %22, align 8
  store i8* null, i8** %23, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %10
  br label %144

33:                                               ; preds = %10
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %36 = sub i32 %34, %35
  %37 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %38 = add nsw i32 %37, 8
  %39 = udiv i32 %36, %38
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %42 = sub i32 %40, %41
  %43 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %44 = add nsw i32 %43, 8
  %45 = load i32, i32* %26, align 4
  %46 = mul i32 %44, %45
  %47 = sub i32 %42, %46
  store i32 %47, i32* %25, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %26, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %25, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %27, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %33
  br label %144

63:                                               ; preds = %33
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* @RARCH_UNMAPPED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8***, i8**** %69, align 8
  %71 = load i32, i32* %26, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8**, i8*** %70, i64 %72
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %27, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %23, align 8
  br label %79

79:                                               ; preds = %67, %63
  %80 = load i8*, i8** %23, align 8
  %81 = call i32 @string_is_empty(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %27, align 4
  %85 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** %16, align 8
  %89 = load i8*, i8** %23, align 8
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @strlcpy(i8* %88, i8* %89, i64 %90)
  br label %138

92:                                               ; preds = %83, %79
  %93 = load i8*, i8** %23, align 8
  %94 = call i32 @string_is_empty(i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %27, align 4
  %98 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %99 = icmp uge i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %27, align 4
  %102 = urem i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %106 = load i8*, i8** %23, align 8
  %107 = call i32 @snprintf(i8* %105, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %106, i8 signext 43)
  %108 = load i8*, i8** %16, align 8
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %110 = load i64, i64* %17, align 8
  %111 = call i32 @strlcpy(i8* %108, i8* %109, i64 %110)
  br label %137

112:                                              ; preds = %100, %96, %92
  %113 = load i8*, i8** %23, align 8
  %114 = call i32 @string_is_empty(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %119 = icmp uge i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* %27, align 4
  %122 = urem i32 %121, 2
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %126 = load i8*, i8** %23, align 8
  %127 = call i32 @snprintf(i8* %125, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %126, i8 signext 45)
  %128 = load i8*, i8** %16, align 8
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @strlcpy(i8* %128, i8* %129, i64 %130)
  br label %136

132:                                              ; preds = %120, %116, %112
  %133 = load i8*, i8** %16, align 8
  %134 = load i64, i64* %17, align 8
  %135 = call i32 @strlcpy(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %132, %124
  br label %137

137:                                              ; preds = %136, %104
  br label %138

138:                                              ; preds = %137, %87
  %139 = load i32*, i32** %12, align 8
  store i32 19, i32* %139, align 4
  %140 = load i8*, i8** %19, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load i64, i64* %20, align 8
  %143 = call i32 @strlcpy(i8* %140, i8* %141, i64 %142)
  br label %144

144:                                              ; preds = %138, %62, %32
  ret void
}

declare dso_local %struct.TYPE_8__* @runloop_get_system_info(...) #1

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
