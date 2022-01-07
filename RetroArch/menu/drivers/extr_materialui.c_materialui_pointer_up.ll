; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_up.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@MUI_THUMBNAIL_STREAM_DELAY_DEFAULT = common dso_local global i32 0, align 4
@MENU_ACTION_CANCEL = common dso_local global i32 0, align 4
@MENU_ACTION_SELECT = common dso_local global i32 0, align 4
@MENU_ACTION_START = common dso_local global i32 0, align 4
@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@MENU_ACTION_RIGHT = common dso_local global i32 0, align 4
@MENU_ACTION_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32*, i32*, i32)* @materialui_pointer_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_pointer_up(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = call i32 (...) @menu_display_get_header_height()
  store i32 %26, i32* %18, align 4
  %27 = call i64 (...) @menu_navigation_get_selection()
  store i64 %27, i64* %19, align 8
  %28 = call i64 (...) @menu_entries_get_size()
  store i64 %28, i64* %20, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %21, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %325

34:                                               ; preds = %8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = call i32 @menu_input_set_pointer_y_accel(float 0.000000e+00)
  %42 = load i32, i32* @MUI_THUMBNAIL_STREAM_DELAY_DEFAULT, align 4
  %43 = call i32 @menu_thumbnail_set_stream_delay(i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  store i32 0, i32* %9, align 4
  br label %325

47:                                               ; preds = %34
  %48 = call i32 @video_driver_get_size(i32* %22, i32* %23)
  %49 = load i32, i32* %14, align 4
  switch i32 %49, label %323 [
    i32 128, label %50
    i32 131, label %50
    i32 132, label %222
    i32 130, label %239
    i32 129, label %281
  ]

50:                                               ; preds = %47, %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %52, %55
  %57 = icmp ugt i32 %51, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  %65 = icmp ugt i32 %59, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %58, %50
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load i64, i64* %19, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @materialui_pointer_up_nav_bar(%struct.TYPE_10__* %67, i32 %68, i32 %69, i32 %70, i32 %71, i64 %72, i32* %73, i32* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %325

77:                                               ; preds = %58
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %173

81:                                               ; preds = %77
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %166

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i1 [ false, %91 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 3, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = sub i32 %104, %112
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %113, %116
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %119, %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %123, %126
  %128 = icmp ugt i32 %118, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %101
  %130 = call i32 (...) @menu_input_dialog_start_search()
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 0, i32 -1
  store i32 %133, i32* %9, align 4
  br label %325

134:                                              ; preds = %101
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 2, %142
  %144 = sub i32 %139, %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %144, %147
  %149 = icmp ugt i32 %138, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %152 = call i32 @materialui_switch_list_view(%struct.TYPE_10__* %151)
  store i32 0, i32* %9, align 4
  br label %325

153:                                              ; preds = %137, %134
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %25, align 4
  %156 = icmp ule i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = load i64, i64* %19, align 8
  %161 = load i32, i32* @MENU_ACTION_CANCEL, align 4
  %162 = call i32 @materialui_menu_entry_action(%struct.TYPE_10__* %158, i32* %159, i64 %160, i32 %161)
  store i32 %162, i32* %9, align 4
  br label %325

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  br label %172

166:                                              ; preds = %86
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %168 = load i32*, i32** %16, align 8
  %169 = load i64, i64* %19, align 8
  %170 = load i32, i32* @MENU_ACTION_CANCEL, align 4
  %171 = call i32 @materialui_menu_entry_action(%struct.TYPE_10__* %167, i32* %168, i64 %169, i32 %170)
  store i32 %171, i32* %9, align 4
  br label %325

172:                                              ; preds = %165
  br label %220

173:                                              ; preds = %77
  %174 = load i32, i32* %13, align 4
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %20, align 8
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %178, label %219

178:                                              ; preds = %173
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = icmp ugt i32 %179, %182
  br i1 %183, label %184, label %219

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %22, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = sub i32 %186, %189
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sub i32 %190, %193
  %195 = icmp ult i32 %185, %194
  br i1 %195, label %196, label %219

196:                                              ; preds = %184
  %197 = load i32, i32* %14, align 4
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %19, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @menu_navigation_set_selection(i32 %205)
  br label %207

207:                                              ; preds = %204, %199
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %209 = load i32*, i32** %16, align 8
  %210 = load i32, i32* %13, align 4
  %211 = zext i32 %210 to i64
  %212 = load i32, i32* @MENU_ACTION_SELECT, align 4
  %213 = call i32 @materialui_menu_entry_action(%struct.TYPE_10__* %208, i32* %209, i64 %211, i32 %212)
  store i32 %213, i32* %9, align 4
  br label %325

214:                                              ; preds = %196
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @menu_navigation_set_selection(i32 %215)
  %217 = call i32 @menu_input_set_pointer_y_accel(float 0.000000e+00)
  br label %218

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218, %184, %178, %173
  br label %220

220:                                              ; preds = %219, %172
  br label %221

221:                                              ; preds = %220
  br label %324

222:                                              ; preds = %47
  %223 = load i32, i32* %13, align 4
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %20, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = load i32, i32* %13, align 4
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %19, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i32, i32* @MENU_ACTION_START, align 4
  %237 = call i32 @materialui_menu_entry_action(%struct.TYPE_10__* %233, i32* %234, i64 %235, i32 %236)
  store i32 %237, i32* %9, align 4
  br label %325

238:                                              ; preds = %227, %222
  br label %324

239:                                              ; preds = %47
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %241 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %242 = call i32 @materialui_list_get_size(%struct.TYPE_10__* %240, i32 %241)
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %246 = load i32*, i32** %16, align 8
  %247 = load i64, i64* %19, align 8
  %248 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  %249 = call i32 @materialui_menu_entry_action(%struct.TYPE_10__* %245, i32* %246, i64 %247, i32 %248)
  store i32 %249, i32* %9, align 4
  br label %325

250:                                              ; preds = %239
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %250
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %255
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %260, %255, %250
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = load i32, i32* %23, align 4
  %269 = load i32, i32* %18, align 4
  %270 = load i32, i32* %12, align 4
  %271 = load i64, i64* %19, align 8
  %272 = call i32 @materialui_pointer_up_swipe_horz_plain_list(%struct.TYPE_10__* %266, i32* %267, i32 %268, i32 %269, i32 %270, i64 %271, i32 1)
  store i32 %272, i32* %9, align 4
  br label %325

273:                                              ; preds = %260
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %275 = load i32*, i32** %16, align 8
  %276 = load i32, i32* %13, align 4
  %277 = load i64, i64* %19, align 8
  %278 = load i64, i64* %20, align 8
  %279 = load i32, i32* @MENU_ACTION_LEFT, align 4
  %280 = call i32 @materialui_pointer_up_swipe_horz_default(%struct.TYPE_10__* %274, i32* %275, i32 %276, i64 %277, i64 %278, i32 %279)
  store i32 %280, i32* %9, align 4
  br label %325

281:                                              ; preds = %47
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %283 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %284 = call i32 @materialui_list_get_size(%struct.TYPE_10__* %282, i32 %283)
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %288 = load i32*, i32** %16, align 8
  %289 = load i64, i64* %19, align 8
  %290 = load i32, i32* @MENU_ACTION_LEFT, align 4
  %291 = call i32 @materialui_menu_entry_action(%struct.TYPE_10__* %287, i32* %288, i64 %289, i32 %290)
  store i32 %291, i32* %9, align 4
  br label %325

292:                                              ; preds = %281
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %307, label %297

297:                                              ; preds = %292
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %297
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %302, %297, %292
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %309 = load i32*, i32** %16, align 8
  %310 = load i32, i32* %23, align 4
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* %12, align 4
  %313 = load i64, i64* %19, align 8
  %314 = call i32 @materialui_pointer_up_swipe_horz_plain_list(%struct.TYPE_10__* %308, i32* %309, i32 %310, i32 %311, i32 %312, i64 %313, i32 0)
  store i32 %314, i32* %9, align 4
  br label %325

315:                                              ; preds = %302
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %317 = load i32*, i32** %16, align 8
  %318 = load i32, i32* %13, align 4
  %319 = load i64, i64* %19, align 8
  %320 = load i64, i64* %20, align 8
  %321 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  %322 = call i32 @materialui_pointer_up_swipe_horz_default(%struct.TYPE_10__* %316, i32* %317, i32 %318, i64 %319, i64 %320, i32 %321)
  store i32 %322, i32* %9, align 4
  br label %325

323:                                              ; preds = %47
  br label %324

324:                                              ; preds = %323, %238, %221
  store i32 0, i32* %9, align 4
  br label %325

325:                                              ; preds = %324, %315, %307, %286, %273, %265, %244, %232, %207, %166, %157, %150, %129, %66, %40, %33
  %326 = load i32, i32* %9, align 4
  ret i32 %326
}

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i32 @menu_input_set_pointer_y_accel(float) #1

declare dso_local i32 @menu_thumbnail_set_stream_delay(i32) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @materialui_pointer_up_nav_bar(%struct.TYPE_10__*, i32, i32, i32, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @menu_input_dialog_start_search(...) #1

declare dso_local i32 @materialui_switch_list_view(%struct.TYPE_10__*) #1

declare dso_local i32 @materialui_menu_entry_action(%struct.TYPE_10__*, i32*, i64, i32) #1

declare dso_local i32 @menu_navigation_set_selection(i32) #1

declare dso_local i32 @materialui_list_get_size(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @materialui_pointer_up_swipe_horz_plain_list(%struct.TYPE_10__*, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @materialui_pointer_up_swipe_horz_default(%struct.TYPE_10__*, i32*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
