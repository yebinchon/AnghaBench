; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_group_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_action_get_title_group_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_MAIN_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SETTINGS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i64)* @action_get_title_group_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_get_title_group_settings(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [255 x i8], align 16
  %12 = alloca [255 x i8], align 16
  %13 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %16 = call i8* @msg_hash_to_str(i32 %15)
  %17 = call i64 @string_is_equal(i8* %14, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MAIN_MENU, align 4
  %22 = call i8* @msg_hash_to_str(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @strlcpy(i8* %20, i8* %22, i64 %23)
  br label %210

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %28 = call i8* @msg_hash_to_str(i32 %27)
  %29 = call i64 @string_is_equal(i8* %26, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HISTORY_TAB, align 4
  %34 = call i8* @msg_hash_to_str(i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @strlcpy(i8* %32, i8* %34, i64 %35)
  br label %209

37:                                               ; preds = %25
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %40 = call i8* @msg_hash_to_str(i32 %39)
  %41 = call i64 @string_is_equal(i8* %38, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FAVORITES_TAB, align 4
  %46 = call i8* @msg_hash_to_str(i32 %45)
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @strlcpy(i8* %44, i8* %46, i64 %47)
  br label %208

49:                                               ; preds = %37
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %52 = call i8* @msg_hash_to_str(i32 %51)
  %53 = call i64 @string_is_equal(i8* %50, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @MENU_ENUM_LABEL_VALUE_IMAGES_TAB, align 4
  %58 = call i8* @msg_hash_to_str(i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @strlcpy(i8* %56, i8* %58, i64 %59)
  br label %207

61:                                               ; preds = %49
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %64 = call i8* @msg_hash_to_str(i32 %63)
  %65 = call i64 @string_is_equal(i8* %62, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MUSIC_TAB, align 4
  %70 = call i8* @msg_hash_to_str(i32 %69)
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @strlcpy(i8* %68, i8* %70, i64 %71)
  br label %206

73:                                               ; preds = %61
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %76 = call i8* @msg_hash_to_str(i32 %75)
  %77 = call i64 @string_is_equal(i8* %74, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* @MENU_ENUM_LABEL_VALUE_VIDEO_TAB, align 4
  %82 = call i8* @msg_hash_to_str(i32 %81)
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @strlcpy(i8* %80, i8* %82, i64 %83)
  br label %205

85:                                               ; preds = %73
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %88 = call i8* @msg_hash_to_str(i32 %87)
  %89 = call i64 @string_is_equal(i8* %86, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SETTINGS_TAB, align 4
  %94 = call i8* @msg_hash_to_str(i32 %93)
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @strlcpy(i8* %92, i8* %94, i64 %95)
  br label %204

97:                                               ; preds = %85
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %100 = call i8* @msg_hash_to_str(i32 %99)
  %101 = call i64 @string_is_equal(i8* %98, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB, align 4
  %106 = call i8* @msg_hash_to_str(i32 %105)
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @strlcpy(i8* %104, i8* %106, i64 %107)
  br label %203

109:                                              ; preds = %97
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %112 = call i8* @msg_hash_to_str(i32 %111)
  %113 = call i64 @string_is_equal(i8* %110, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ADD_TAB, align 4
  %118 = call i8* @msg_hash_to_str(i32 %117)
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @strlcpy(i8* %116, i8* %118, i64 %119)
  br label %202

121:                                              ; preds = %109
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %124 = call i8* @msg_hash_to_str(i32 %123)
  %125 = call i64 @string_is_equal(i8* %122, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_TAB, align 4
  %130 = call i8* @msg_hash_to_str(i32 %129)
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @strlcpy(i8* %128, i8* %130, i64 %131)
  br label %201

133:                                              ; preds = %121
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %136 = call i8* @msg_hash_to_str(i32 %135)
  %137 = call i64 @string_is_equal(i8* %134, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @MENU_ENUM_LABEL_VALUE_HORIZONTAL_MENU, align 4
  %142 = call i8* @msg_hash_to_str(i32 %141)
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @strlcpy(i8* %140, i8* %142, i64 %143)
  br label %200

145:                                              ; preds = %133
  %146 = load i8*, i8** %7, align 8
  %147 = call %struct.string_list* @string_split(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %147, %struct.string_list** %13, align 8
  %148 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %148, align 16
  %149 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %149, align 16
  %150 = load %struct.string_list*, %struct.string_list** %13, align 8
  %151 = icmp ne %struct.string_list* %150, null
  br i1 %151, label %152, label %183

152:                                              ; preds = %145
  %153 = load %struct.string_list*, %struct.string_list** %13, align 8
  %154 = getelementptr inbounds %struct.string_list, %struct.string_list* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %152
  %158 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %159 = load %struct.string_list*, %struct.string_list** %13, align 8
  %160 = getelementptr inbounds %struct.string_list, %struct.string_list* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strlcpy(i8* %158, i8* %164, i64 255)
  %166 = load %struct.string_list*, %struct.string_list** %13, align 8
  %167 = getelementptr inbounds %struct.string_list, %struct.string_list* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 1
  br i1 %169, label %170, label %179

170:                                              ; preds = %157
  %171 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %172 = load %struct.string_list*, %struct.string_list** %13, align 8
  %173 = getelementptr inbounds %struct.string_list, %struct.string_list* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strlcpy(i8* %171, i8* %177, i64 255)
  br label %179

179:                                              ; preds = %170, %157
  br label %180

180:                                              ; preds = %179, %152
  %181 = load %struct.string_list*, %struct.string_list** %13, align 8
  %182 = call i32 @string_list_free(%struct.string_list* %181)
  br label %183

183:                                              ; preds = %180, %145
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @strlcpy(i8* %184, i8* %185, i64 %186)
  %188 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %189 = call i32 @string_is_empty(i8* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %183
  %192 = load i8*, i8** %9, align 8
  %193 = load i64, i64* %10, align 8
  %194 = call i32 @strlcat(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %193)
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %197 = load i64, i64* %10, align 8
  %198 = call i32 @strlcat(i8* %195, i8* %196, i64 %197)
  br label %199

199:                                              ; preds = %191, %183
  br label %200

200:                                              ; preds = %199, %139
  br label %201

201:                                              ; preds = %200, %127
  br label %202

202:                                              ; preds = %201, %115
  br label %203

203:                                              ; preds = %202, %103
  br label %204

204:                                              ; preds = %203, %91
  br label %205

205:                                              ; preds = %204, %79
  br label %206

206:                                              ; preds = %205, %67
  br label %207

207:                                              ; preds = %206, %55
  br label %208

208:                                              ; preds = %207, %43
  br label %209

209:                                              ; preds = %208, %31
  br label %210

210:                                              ; preds = %209, %19
  ret i32 0
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
