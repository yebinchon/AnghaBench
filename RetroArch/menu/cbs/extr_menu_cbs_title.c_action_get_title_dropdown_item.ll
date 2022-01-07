; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_dropdown_item.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_dropdown_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"core_option_\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@RARCH_CTL_CORE_OPTIONS_LIST_GET = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@MSG_LAST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_THUMBNAILS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64)* @action_get_title_dropdown_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_get_title_dropdown_item(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @string_is_empty(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %176

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strstr(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %124

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.string_list* @string_split(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.string_list* %34, %struct.string_list** %12, align 8
  store i32 0, i32* %13, align 4
  %35 = load %struct.string_list*, %struct.string_list** %12, align 8
  %36 = icmp ne %struct.string_list* %35, null
  br i1 %36, label %37, label %116

37:                                               ; preds = %32
  %38 = load %struct.string_list*, %struct.string_list** %12, align 8
  %39 = getelementptr inbounds %struct.string_list, %struct.string_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %37
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  %43 = load i32, i32* @RARCH_CTL_CORE_OPTIONS_LIST_GET, align 4
  %44 = call i32 @rarch_ctl(i32 %43, %struct.TYPE_12__** %14)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %115

47:                                               ; preds = %42
  %48 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %15, align 8
  %49 = load %struct.string_list*, %struct.string_list** %12, align 8
  %50 = getelementptr inbounds %struct.string_list, %struct.string_list* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.string_list*, %struct.string_list** %12, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = sub i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @string_to_unsigned(i8* %60)
  store i32 %61, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32, i32* %16, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %67, %47
  store i32 0, i32* %20, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %20, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i64 @core_option_manager_get_visible(%struct.TYPE_12__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  store i32 1, i32* %19, align 4
  %87 = load i32, i32* %20, align 4
  store i32 %87, i32* %18, align 4
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %17, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %88, %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %20, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %20, align 4
  br label %71

95:                                               ; preds = %86, %71
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i8* @core_option_manager_get_desc(%struct.TYPE_12__* %99, i32 %100)
  store i8* %101, i8** %21, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load i8*, i8** %21, align 8
  %106 = call i64 @string_is_empty(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %21, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @sanitize_to_string(i8* %109, i8* %110, i64 %111)
  store i32 1, i32* %13, align 4
  br label %113

113:                                              ; preds = %108, %104, %98
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %42
  br label %116

116:                                              ; preds = %115, %37, %32
  %117 = load %struct.string_list*, %struct.string_list** %12, align 8
  %118 = icmp ne %struct.string_list* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.string_list*, %struct.string_list** %12, align 8
  %121 = call i32 @string_list_free(%struct.string_list* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %6, align 4
  br label %176

124:                                              ; preds = %28
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @string_to_unsigned(i8* %125)
  %127 = add i32 %126, 2
  store i32 %127, i32* %22, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @MSG_UNKNOWN, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %174

131:                                              ; preds = %124
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* @MSG_LAST, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %174

135:                                              ; preds = %131
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i8*, i8** %10, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @action_get_title_thumbnails(i8* %140, i8* %141, i32 %142, i8* %143, i64 %144)
  store i32 %145, i32* %6, align 4
  br label %176

146:                                              ; preds = %135
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i8*, i8** %7, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @action_get_title_left_thumbnails(i8* %151, i8* %152, i32 %153, i8* %154, i64 %155)
  store i32 %156, i32* %6, align 4
  br label %176

157:                                              ; preds = %146
  %158 = load i32, i32* %22, align 4
  %159 = call i8* @msg_hash_to_str(i32 %158)
  store i8* %159, i8** %23, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load i8*, i8** %23, align 8
  %164 = call i64 @string_is_empty(i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %23, align 8
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @sanitize_to_string(i8* %167, i8* %168, i64 %169)
  store i32 1, i32* %6, align 4
  br label %176

171:                                              ; preds = %162, %157
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173, %131, %124
  br label %175

175:                                              ; preds = %174
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %166, %150, %139, %122, %27
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @rarch_ctl(i32, %struct.TYPE_12__**) #1

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @string_to_unsigned(i8*) #1

declare dso_local i64 @core_option_manager_get_visible(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @core_option_manager_get_desc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sanitize_to_string(i8*, i8*, i64) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @action_get_title_thumbnails(i8*, i8*, i32, i8*, i64) #1

declare dso_local i32 @action_get_title_left_thumbnails(i8*, i8*, i32, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
