; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_settings_internal_enum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_settings_internal_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@menu_displaylist_parse_settings_internal_enum.precond_lut = internal global [16 x i32] [i32 140, i32 134, i32 144, i32 135, i32 128, i32 142, i32 138, i32 143, i32 140, i32 131, i32 133, i32 130, i32 136, i32 141, i32 134, i32 132], align 16
@SD_FLAG_ADVANCED = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_END = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NO_SETTINGS_FOUND = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NO_SETTINGS_FOUND = common dso_local global i32 0, align 4
@SD_FLAG_LAKKA_ADVANCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_10__*, i32, i32)* @menu_displaylist_parse_settings_internal_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_settings_internal_enum(i32* %0, i32 %1, i32 %2, %struct.TYPE_10__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__**, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* @menu_displaylist_parse_settings_internal_enum.precond_lut, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %28 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %16, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %153

36:                                               ; preds = %6
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @SD_FLAG_ADVANCED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %137

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %131, %49
  store i32 0, i32* %19, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %20, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %21, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = call i32 @setting_get_type(%struct.TYPE_10__* %57)
  store i32 %58, i32* %22, align 4
  store %struct.TYPE_10__** %11, %struct.TYPE_10__*** %23, align 8
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %77 [
    i32 158, label %60
    i32 159, label %65
    i32 153, label %65
    i32 145, label %70
    i32 160, label %71
    i32 151, label %71
    i32 146, label %71
    i32 149, label %71
    i32 157, label %71
    i32 156, label %71
    i32 154, label %71
    i32 152, label %71
    i32 148, label %71
    i32 150, label %71
    i32 155, label %71
    i32 147, label %71
  ]

60:                                               ; preds = %50
  %61 = load i32, i32* %22, align 4
  switch i32 %61, label %63 [
    i32 137, label %62
    i32 140, label %62
    i32 129, label %62
    i32 139, label %62
  ]

62:                                               ; preds = %60, %60, %60, %60
  br label %117

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63
  br label %77

65:                                               ; preds = %50, %50
  %66 = load i32, i32* %22, align 4
  %67 = icmp eq i32 %66, 137
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %77

69:                                               ; preds = %65
  br label %117

70:                                               ; preds = %50
  br label %77

71:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %77

76:                                               ; preds = %71
  br label %117

77:                                               ; preds = %50, %75, %70, %68, %64
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = call i32 @menu_setting_set_flags(%struct.TYPE_10__* %85)
  %87 = call i32 @menu_entries_append_enum(i32* %81, i8* %82, i8* %83, i32 %84, i32 %86, i32 0, i32 0)
  br label %114

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @MENU_SETTINGS_INPUT_BEGIN, align 4
  %91 = icmp uge i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @MENU_SETTINGS_INPUT_END, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* @MENU_SETTINGS_INPUT_BEGIN, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %15, align 8
  %100 = add i64 %98, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %96, %92, %88
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = call i32 @menu_setting_set_flags(%struct.TYPE_10__* %106)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32*, i32** %8, align 8
  %110 = load i8*, i8** %20, align 8
  %111 = load i8*, i8** %21, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @menu_entries_append(i32* %109, i8* %110, i8* %111, i32 %112, i32 0, i32 0)
  br label %114

114:                                              ; preds = %108, %80
  %115 = load i64, i64* %15, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %15, align 8
  br label %117

117:                                              ; preds = %114, %76, %69, %62
  %118 = load i32, i32* %9, align 4
  switch i32 %118, label %127 [
    i32 158, label %119
    i32 159, label %119
    i32 153, label %119
    i32 145, label %119
    i32 157, label %126
    i32 154, label %126
    i32 152, label %126
    i32 156, label %126
    i32 151, label %126
    i32 146, label %126
    i32 149, label %126
    i32 150, label %126
    i32 155, label %126
    i32 148, label %126
    i32 147, label %126
    i32 160, label %126
  ]

119:                                              ; preds = %117, %117, %117, %117
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %121 = call i32 @setting_get_type(%struct.TYPE_10__* %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 1, i32* %19, align 4
  br label %125

125:                                              ; preds = %124, %119
  br label %127

126:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  store i32 1, i32* %19, align 4
  br label %127

127:                                              ; preds = %117, %126, %125
  %128 = load i32, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %136

131:                                              ; preds = %127
  %132 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 1
  %135 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  store %struct.TYPE_10__* %134, %struct.TYPE_10__** %135, align 8
  br label %50

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %47
  %138 = load i64, i64* %15, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NO_SETTINGS_FOUND, align 4
  %146 = call i8* @msg_hash_to_str(i32 %145)
  %147 = load i32, i32* @MENU_ENUM_LABEL_NO_SETTINGS_FOUND, align 4
  %148 = call i8* @msg_hash_to_str(i32 %147)
  %149 = load i32, i32* @MENU_ENUM_LABEL_NO_SETTINGS_FOUND, align 4
  %150 = call i32 @menu_entries_append_enum(i32* %144, i8* %146, i8* %148, i32 %149, i32 0, i32 0, i32 0)
  br label %151

151:                                              ; preds = %143, %140
  store i32 -1, i32* %7, align 4
  br label %153

152:                                              ; preds = %137
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %151, %35
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @setting_get_type(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_entries_append_enum(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @menu_setting_set_flags(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_entries_append(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
