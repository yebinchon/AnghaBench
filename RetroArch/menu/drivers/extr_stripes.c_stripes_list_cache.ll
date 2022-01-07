; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_cache.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@MENU_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@MENU_SETTINGS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_SETTING_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_VIDEO_TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @stripes_list_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_cache(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %9, align 8
  %19 = call %struct.TYPE_17__* @menu_entries_get_menu_stack_ptr(i32 0)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = call %struct.TYPE_17__* @menu_entries_get_selection_buf_ptr(i32 0)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %11, align 8
  %21 = call i64 (...) @menu_navigation_get_selection()
  store i64 %21, i64* %12, align 8
  %22 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %13, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %316

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %33 = call i32 @video_driver_get_size(i32* null, i32* %16)
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, 1
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i64 [ %48, %44 ], [ 0, %49 ]
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %50, %32
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @stripes_calculate_visible_range(%struct.TYPE_15__* %56, i32 %57, i64 %60, i64 %63, i32* %14, i32* %15)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @stripes_list_deep_copy(%struct.TYPE_17__* %65, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %84

81:                                               ; preds = %26
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %52
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = call i64 @stripes_list_get_size(%struct.TYPE_15__* %85, i32 138)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  store i64 %90, i64* %8, align 8
  %91 = load i32, i32* %5, align 4
  switch i32 %91, label %315 [
    i32 137, label %92
    i32 138, label %93
  ]

92:                                               ; preds = %84
  br label %316

93:                                               ; preds = %84
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %120 [
    i32 139, label %100
  ]

100:                                              ; preds = %93
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub i64 %109, 1
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  br label %119

114:                                              ; preds = %100
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %114, %105
  br label %137

120:                                              ; preds = %93
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  store i32 1, i32* %130, align 8
  br label %136

131:                                              ; preds = %120
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %119
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %7, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = sub i64 %144, 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %160

150:                                              ; preds = %137
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = sub i64 %154, 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @free(i32* %158)
  br label %160

160:                                              ; preds = %150, %137
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load i64, i64* %7, align 8
  %165 = sub i64 %164, 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  store i32* null, i32** %167, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @stripes_get_system_tab(%struct.TYPE_15__* %168, i32 %172)
  switch i32 %173, label %294 [
    i32 132, label %174
    i32 129, label %194
    i32 131, label %214
    i32 134, label %234
    i32 135, label %254
    i32 136, label %274
  ]

174:                                              ; preds = %160
  %175 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %176 = call i32 @msg_hash_to_str(i32 %175)
  %177 = call i8* @strdup(i32 %176)
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = load i64, i64* %7, align 8
  %183 = sub i64 %182, 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  store i32* %178, i32** %185, align 8
  %186 = load i32, i32* @MENU_SETTINGS, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = load i64, i64* %7, align 8
  %191 = sub i64 %190, 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  store i32 %186, i32* %193, align 8
  br label %314

194:                                              ; preds = %160
  %195 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %196 = call i32 @msg_hash_to_str(i32 %195)
  %197 = call i8* @strdup(i32 %196)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = sub i64 %202, 1
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  store i32* %198, i32** %205, align 8
  %206 = load i32, i32* @MENU_SETTINGS_TAB, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i64, i64* %7, align 8
  %211 = sub i64 %210, 1
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  store i32 %206, i32* %213, align 8
  br label %314

214:                                              ; preds = %160
  %215 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %216 = call i32 @msg_hash_to_str(i32 %215)
  %217 = call i8* @strdup(i32 %216)
  %218 = bitcast i8* %217 to i32*
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = load i64, i64* %7, align 8
  %223 = sub i64 %222, 1
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  store i32* %218, i32** %225, align 8
  %226 = load i32, i32* @MENU_MUSIC_TAB, align 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = load i64, i64* %7, align 8
  %231 = sub i64 %230, 1
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  store i32 %226, i32* %233, align 8
  br label %314

234:                                              ; preds = %160
  %235 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %236 = call i32 @msg_hash_to_str(i32 %235)
  %237 = call i8* @strdup(i32 %236)
  %238 = bitcast i8* %237 to i32*
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i64, i64* %7, align 8
  %243 = sub i64 %242, 1
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  store i32* %238, i32** %245, align 8
  %246 = load i32, i32* @MENU_HISTORY_TAB, align 4
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = load i64, i64* %7, align 8
  %251 = sub i64 %250, 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  store i32 %246, i32* %253, align 8
  br label %314

254:                                              ; preds = %160
  %255 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %256 = call i32 @msg_hash_to_str(i32 %255)
  %257 = call i8* @strdup(i32 %256)
  %258 = bitcast i8* %257 to i32*
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = load i64, i64* %7, align 8
  %263 = sub i64 %262, 1
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  store i32* %258, i32** %265, align 8
  %266 = load i32, i32* @MENU_FAVORITES_TAB, align 4
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load i64, i64* %7, align 8
  %271 = sub i64 %270, 1
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  store i32 %266, i32* %273, align 8
  br label %314

274:                                              ; preds = %160
  %275 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %276 = call i32 @msg_hash_to_str(i32 %275)
  %277 = call i8* @strdup(i32 %276)
  %278 = bitcast i8* %277 to i32*
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %280, align 8
  %282 = load i64, i64* %7, align 8
  %283 = sub i64 %282, 1
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  store i32* %278, i32** %285, align 8
  %286 = load i32, i32* @MENU_ADD_TAB, align 4
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = load i64, i64* %7, align 8
  %291 = sub i64 %290, 1
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  store i32 %286, i32* %293, align 8
  br label %314

294:                                              ; preds = %160
  %295 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %296 = call i32 @msg_hash_to_str(i32 %295)
  %297 = call i8* @strdup(i32 %296)
  %298 = bitcast i8* %297 to i32*
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = load i64, i64* %7, align 8
  %303 = sub i64 %302, 1
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  store i32* %298, i32** %305, align 8
  %306 = load i32, i32* @MENU_SETTING_HORIZONTAL_MENU, align 4
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = load i64, i64* %7, align 8
  %311 = sub i64 %310, 1
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  store i32 %306, i32* %313, align 8
  br label %314

314:                                              ; preds = %294, %274, %254, %234, %214, %194, %174
  br label %316

315:                                              ; preds = %84
  br label %316

316:                                              ; preds = %25, %315, %314, %92
  ret void
}

declare dso_local %struct.TYPE_17__* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local %struct.TYPE_17__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @stripes_calculate_visible_range(%struct.TYPE_15__*, i32, i64, i64, i32*, i32*) #1

declare dso_local i32 @stripes_list_deep_copy(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @stripes_list_get_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @stripes_get_system_tab(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
