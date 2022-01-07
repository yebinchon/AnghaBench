; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_cache.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_cache.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @xmb_list_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_list_cache(i8* %0, i32 %1, i32 %2) #0 {
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
  br label %317

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %82

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
  %64 = trunc i64 %63 to i32
  %65 = call i32 @xmb_calculate_visible_range(%struct.TYPE_15__* %56, i32 %57, i64 %60, i32 %64, i32* %14, i32* %15)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @xmb_list_deep_copy(%struct.TYPE_17__* %66, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %85

82:                                               ; preds = %26
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %52
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %87 = call i64 @xmb_list_get_size(%struct.TYPE_15__* %86, i32 138)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %87, %90
  store i64 %91, i64* %8, align 8
  %92 = load i32, i32* %5, align 4
  switch i32 %92, label %316 [
    i32 137, label %93
    i32 138, label %94
  ]

93:                                               ; preds = %85
  br label %317

94:                                               ; preds = %85
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %6, align 4
  switch i32 %100, label %121 [
    i32 139, label %101
  ]

101:                                              ; preds = %94
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %8, align 8
  %111 = sub i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %120

115:                                              ; preds = %101
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %115, %106
  br label %138

121:                                              ; preds = %94
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  store i32 1, i32* %131, align 8
  br label %137

132:                                              ; preds = %121
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %120
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %7, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = sub i64 %145, 1
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %138
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = sub i64 %155, 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @free(i32* %159)
  br label %161

161:                                              ; preds = %151, %138
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = load i64, i64* %7, align 8
  %166 = sub i64 %165, 1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  store i32* null, i32** %168, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @xmb_get_system_tab(%struct.TYPE_15__* %169, i32 %173)
  switch i32 %174, label %295 [
    i32 132, label %175
    i32 129, label %195
    i32 131, label %215
    i32 134, label %235
    i32 135, label %255
    i32 136, label %275
  ]

175:                                              ; preds = %161
  %176 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %177 = call i32 @msg_hash_to_str(i32 %176)
  %178 = call i8* @strdup(i32 %177)
  %179 = bitcast i8* %178 to i32*
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = load i64, i64* %7, align 8
  %184 = sub i64 %183, 1
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  store i32* %179, i32** %186, align 8
  %187 = load i32, i32* @MENU_SETTINGS, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = sub i64 %191, 1
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  store i32 %187, i32* %194, align 8
  br label %315

195:                                              ; preds = %161
  %196 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %197 = call i32 @msg_hash_to_str(i32 %196)
  %198 = call i8* @strdup(i32 %197)
  %199 = bitcast i8* %198 to i32*
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load i64, i64* %7, align 8
  %204 = sub i64 %203, 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  store i32* %199, i32** %206, align 8
  %207 = load i32, i32* @MENU_SETTINGS_TAB, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = load i64, i64* %7, align 8
  %212 = sub i64 %211, 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  store i32 %207, i32* %214, align 8
  br label %315

215:                                              ; preds = %161
  %216 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %217 = call i32 @msg_hash_to_str(i32 %216)
  %218 = call i8* @strdup(i32 %217)
  %219 = bitcast i8* %218 to i32*
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load i64, i64* %7, align 8
  %224 = sub i64 %223, 1
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  store i32* %219, i32** %226, align 8
  %227 = load i32, i32* @MENU_MUSIC_TAB, align 4
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = load i64, i64* %7, align 8
  %232 = sub i64 %231, 1
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  store i32 %227, i32* %234, align 8
  br label %315

235:                                              ; preds = %161
  %236 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %237 = call i32 @msg_hash_to_str(i32 %236)
  %238 = call i8* @strdup(i32 %237)
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = load i64, i64* %7, align 8
  %244 = sub i64 %243, 1
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  store i32* %239, i32** %246, align 8
  %247 = load i32, i32* @MENU_HISTORY_TAB, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = load i64, i64* %7, align 8
  %252 = sub i64 %251, 1
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  store i32 %247, i32* %254, align 8
  br label %315

255:                                              ; preds = %161
  %256 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %257 = call i32 @msg_hash_to_str(i32 %256)
  %258 = call i8* @strdup(i32 %257)
  %259 = bitcast i8* %258 to i32*
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = load i64, i64* %7, align 8
  %264 = sub i64 %263, 1
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  store i32* %259, i32** %266, align 8
  %267 = load i32, i32* @MENU_FAVORITES_TAB, align 4
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = load i64, i64* %7, align 8
  %272 = sub i64 %271, 1
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  store i32 %267, i32* %274, align 8
  br label %315

275:                                              ; preds = %161
  %276 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %277 = call i32 @msg_hash_to_str(i32 %276)
  %278 = call i8* @strdup(i32 %277)
  %279 = bitcast i8* %278 to i32*
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %281, align 8
  %283 = load i64, i64* %7, align 8
  %284 = sub i64 %283, 1
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 1
  store i32* %279, i32** %286, align 8
  %287 = load i32, i32* @MENU_ADD_TAB, align 4
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %289, align 8
  %291 = load i64, i64* %7, align 8
  %292 = sub i64 %291, 1
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  store i32 %287, i32* %294, align 8
  br label %315

295:                                              ; preds = %161
  %296 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %297 = call i32 @msg_hash_to_str(i32 %296)
  %298 = call i8* @strdup(i32 %297)
  %299 = bitcast i8* %298 to i32*
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %301, align 8
  %303 = load i64, i64* %7, align 8
  %304 = sub i64 %303, 1
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  store i32* %299, i32** %306, align 8
  %307 = load i32, i32* @MENU_SETTING_HORIZONTAL_MENU, align 4
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = load i64, i64* %7, align 8
  %312 = sub i64 %311, 1
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  store i32 %307, i32* %314, align 8
  br label %315

315:                                              ; preds = %295, %275, %255, %235, %215, %195, %175
  br label %317

316:                                              ; preds = %85
  br label %317

317:                                              ; preds = %25, %316, %315, %93
  ret void
}

declare dso_local %struct.TYPE_17__* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local %struct.TYPE_17__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @xmb_calculate_visible_range(%struct.TYPE_15__*, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @xmb_list_deep_copy(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @xmb_list_get_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @xmb_get_system_tab(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
