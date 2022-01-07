; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_add_to_favorites.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_add_to_favorites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.retro_system_info = type { i8* }
%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i64 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CMD_EVENT_ADD_TO_FAVORITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_add_to_favorites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_add_to_favorites(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.retro_system_info*, align 8
  %16 = alloca %struct.string_list*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %union.string_list_elem_attr, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_13__, align 8
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %28 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %29 = call i8* @path_get(i32 %28)
  store i8* %29, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = call i64 @string_is_empty(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %220, label %33

33:                                               ; preds = %5
  %34 = call %struct.TYPE_12__* (...) @global_get_ptr()
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  %35 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %35, %struct.retro_system_info** %15, align 8
  store %struct.string_list* null, %struct.string_list** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %36 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %20, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %21, align 8
  %40 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %22, align 8
  %43 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %23, align 8
  %46 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %46, align 16
  %47 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %47, align 16
  %48 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %48, align 16
  %49 = bitcast %union.string_list_elem_attr* %19 to i64*
  store i64 0, i64* %49, align 8
  %50 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %50, %struct.string_list** %16, align 8
  %51 = load %struct.string_list*, %struct.string_list** %16, align 8
  %52 = icmp ne %struct.string_list* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i32 1, i32* %24, align 4
  br label %216

54:                                               ; preds = %33
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @string_is_empty(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = trunc i64 %37 to i32
  %70 = call i32 @strlcpy(i8* %39, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %57
  br label %72

72:                                               ; preds = %71, %54
  %73 = call i64 @string_is_empty(i8* %39)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %12, align 8
  %77 = trunc i64 %37 to i32
  %78 = call i32 @fill_short_pathname_representation(i8* %39, i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %81 = icmp ne %struct.retro_system_info* %80, null
  br i1 %81, label %82, label %128

82:                                               ; preds = %79
  %83 = load i32, i32* @RARCH_PATH_CORE, align 4
  %84 = call i8* @path_get(i32 %83)
  %85 = call i64 @string_is_empty(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @RARCH_PATH_CORE, align 4
  %89 = call i8* @path_get(i32 %88)
  %90 = trunc i64 %41 to i32
  %91 = call i32 @strlcpy(i8* %42, i8* %89, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i8* %42, i8** %93, align 8
  %94 = call i64 @core_info_find(%struct.TYPE_13__* %25, i8* %42)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @string_is_empty(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = trunc i64 %44 to i32
  %109 = call i32 @strlcpy(i8* %45, i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %96
  br label %111

111:                                              ; preds = %110, %87
  br label %112

112:                                              ; preds = %111, %82
  %113 = call i64 @string_is_empty(i8* %45)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %117 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @string_is_empty(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %123 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = trunc i64 %44 to i32
  %126 = call i32 @strlcpy(i8* %45, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %115, %112
  br label %128

128:                                              ; preds = %127, %79
  %129 = call i64 @string_is_empty(i8* %42)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = call i64 @string_is_empty(i8* %45)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131, %128
  %135 = trunc i64 %41 to i32
  %136 = call i32 @strlcpy(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = trunc i64 %44 to i32
  %138 = call i32 @strlcpy(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %134, %131
  %140 = call %struct.TYPE_11__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %26, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %139
  %144 = call i32* (...) @playlist_get_cached()
  store i32* %144, i32** %27, align 8
  %145 = load i32*, i32** %27, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %12, align 8
  %150 = call i64 @playlist_index_is_valid(i32* %145, i32 %148, i8* %149, i8* %42)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %143
  %153 = load i32*, i32** %27, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @playlist_get_crc32(i32* %153, i32 %156, i8** %17)
  %158 = load i32*, i32** %27, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @playlist_get_db_name(i32* %158, i32 %161, i8** %18)
  br label %163

163:                                              ; preds = %152, %143
  br label %164

164:                                              ; preds = %163, %139
  %165 = load %struct.string_list*, %struct.string_list** %16, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %19, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @string_list_append(%struct.string_list* %165, i8* %166, i64 %168)
  %170 = load %struct.string_list*, %struct.string_list** %16, align 8
  %171 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %19, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @string_list_append(%struct.string_list* %170, i8* %39, i64 %172)
  %174 = load %struct.string_list*, %struct.string_list** %16, align 8
  %175 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %19, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @string_list_append(%struct.string_list* %174, i8* %42, i64 %176)
  %178 = load %struct.string_list*, %struct.string_list** %16, align 8
  %179 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %19, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @string_list_append(%struct.string_list* %178, i8* %45, i64 %180)
  %182 = load %struct.string_list*, %struct.string_list** %16, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = call i64 @string_is_empty(i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %164
  %187 = load i8*, i8** %17, align 8
  br label %189

188:                                              ; preds = %164
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i8* [ %187, %186 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %188 ]
  %191 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %19, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @string_list_append(%struct.string_list* %182, i8* %190, i64 %192)
  %194 = load %struct.string_list*, %struct.string_list** %16, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = call i64 @string_is_empty(i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %189
  %199 = load i8*, i8** %18, align 8
  br label %201

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i8* [ %199, %198 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %200 ]
  %203 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %19, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @string_list_append(%struct.string_list* %194, i8* %202, i64 %204)
  %206 = load i32, i32* @CMD_EVENT_ADD_TO_FAVORITES, align 4
  %207 = load %struct.string_list*, %struct.string_list** %16, align 8
  %208 = bitcast %struct.string_list* %207 to i8*
  %209 = call i32 @command_event(i32 %206, i8* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %201
  %212 = call i32 (...) @menu_cbs_exit()
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %211, %201
  %214 = load %struct.string_list*, %struct.string_list** %16, align 8
  %215 = call i32 @string_list_free(%struct.string_list* %214)
  store %struct.string_list* null, %struct.string_list** %16, align 8
  store i32 0, i32* %24, align 4
  br label %216

216:                                              ; preds = %213, %53
  %217 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %24, align 4
  switch i32 %218, label %224 [
    i32 0, label %219
    i32 1, label %222
  ]

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %219, %5
  %221 = load i32, i32* %13, align 4
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %220, %216
  %223 = load i32, i32* %6, align 4
  ret i32 %223

224:                                              ; preds = %216
  unreachable
}

declare dso_local i8* @path_get(i32) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local %struct.TYPE_12__* @global_get_ptr(...) #1

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_short_pathname_representation(i8*, i8*, i32) #1

declare dso_local i64 @core_info_find(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_11__* @menu_driver_get_ptr(...) #1

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i64 @playlist_index_is_valid(i32*, i32, i8*, i8*) #1

declare dso_local i32 @playlist_get_crc32(i32*, i32, i8**) #1

declare dso_local i32 @playlist_get_db_name(i32*, i32, i8**) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i64) #1

declare dso_local i32 @command_event(i32, i8*) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
