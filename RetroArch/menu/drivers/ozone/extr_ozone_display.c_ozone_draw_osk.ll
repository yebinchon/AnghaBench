; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_osk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_osk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }

@ozone_draw_osk.last_time = internal global i64 0, align 8
@INTERVAL_OSK_CURSOR = common dso_local global i64 0, align 8
@ozone_osk_backdrop = common dso_local global i32 0, align 4
@ozone_theme_light = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FONT_SIZE_ENTRIES_LABEL = common dso_local global i64 0, align 8
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@ozone_pure_white = common dso_local global i32 0, align 4
@OZONE_THEME_TEXTURE_CURSOR_STATIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_draw_osk(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [2048 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.string_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 75, i32* %14, align 4
  store i32 10, i32* %15, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @string_is_empty(i8* %26)
  store i32 %27, i32* %18, align 4
  %28 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %28, i64* %19, align 8
  %29 = load i64, i64* %19, align 8
  %30 = load i64, i64* @ozone_draw_osk.last_time, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* @INTERVAL_OSK_CURSOR, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %19, align 8
  store i64 %43, i64* @ozone_draw_osk.last_time, align 8
  br label %44

44:                                               ; preds = %34, %4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul i32 %51, 2
  %53 = sub i32 %50, %52
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @menu_display_draw_quad(%struct.TYPE_16__* %45, i32 %46, i32 %47, i32 %53, i32 1, i32 %56, i32 %59, i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub i32 %68, %69
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = mul i32 %74, 2
  %76 = sub i32 %73, %75
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @menu_display_draw_quad(%struct.TYPE_16__* %66, i32 %67, i32 %70, i32 %76, i32 1, i32 %79, i32 %82, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul i32 %93, 2
  %95 = sub i32 %92, %94
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @menu_display_draw_quad(%struct.TYPE_16__* %89, i32 %90, i32 %91, i32 1, i32 %95, i32 %98, i32 %101, i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sub i32 %111, %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = mul i32 %116, 2
  %118 = sub i32 %115, %117
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @menu_display_draw_quad(%struct.TYPE_16__* %108, i32 %113, i32 %114, i32 1, i32 %118, i32 %121, i32 %124, i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = load i32, i32* %14, align 4
  %133 = add i32 %132, 1
  %134 = load i32, i32* %14, align 4
  %135 = add i32 %134, 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = mul i32 %139, 2
  %141 = sub i32 %138, %140
  %142 = sub i32 %141, 2
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %14, align 4
  %145 = mul i32 %144, 2
  %146 = sub i32 %143, %145
  %147 = sub i32 %146, 2
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ozone_osk_backdrop, align 4
  %155 = call i32 @menu_display_draw_quad(%struct.TYPE_16__* %131, i32 %133, i32 %135, i32 %142, i32 %147, i32 %150, i32 %153, i32 %154)
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %44
  %159 = load i8*, i8** %8, align 8
  store i8* %159, i8** %10, align 8
  store i32 -1, i32* %12, align 4
  br label %163

160:                                              ; preds = %44
  %161 = load i8*, i8** %7, align 8
  store i8* %161, i8** %10, align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ozone_theme_light, i32 0, i32 0), align 4
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %160, %158
  %164 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %165 = load i8*, i8** %10, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = mul i32 %169, 2
  %171 = sub i32 %168, %170
  %172 = load i32, i32* %15, align 4
  %173 = mul i32 %172, 2
  %174 = sub i32 %171, %173
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = udiv i32 %174, %177
  %179 = call i32 @word_wrap(i8* %164, i8* %165, i32 %178, i32 1, i32 0)
  %180 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %181 = call %struct.string_list* @string_split(i8* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %181, %struct.string_list** %13, align 8
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %279, %163
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.string_list*, %struct.string_list** %13, align 8
  %185 = getelementptr inbounds %struct.string_list, %struct.string_list* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ult i32 %183, %186
  br i1 %187, label %188, label %282

188:                                              ; preds = %182
  %189 = load %struct.string_list*, %struct.string_list** %13, align 8
  %190 = getelementptr inbounds %struct.string_list, %struct.string_list* %189, i32 0, i32 1
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %20, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = load i8*, i8** %20, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %15, align 4
  %202 = mul i32 %201, 2
  %203 = add i32 %200, %202
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %15, align 4
  %206 = add i32 %204, %205
  %207 = zext i32 %206 to i64
  %208 = load i64, i64* @FONT_SIZE_ENTRIES_LABEL, align 8
  %209 = add nsw i64 %207, %208
  %210 = load i32, i32* %17, align 4
  %211 = zext i32 %210 to i64
  %212 = add nsw i64 %209, %211
  %213 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @ozone_draw_text(%struct.TYPE_16__* %197, %struct.TYPE_17__* %198, i8* %199, i32 %203, i64 %212, i32 %213, i32 %216, i32 %219, i32 %223, i32 %224, i32 0)
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.string_list*, %struct.string_list** %13, align 8
  %228 = getelementptr inbounds %struct.string_list, %struct.string_list* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sub i32 %229, 1
  %231 = icmp eq i32 %226, %230
  br i1 %231, label %232, label %275

232:                                              ; preds = %188
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %274

237:                                              ; preds = %232
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %251

241:                                              ; preds = %237
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i8*, i8** %20, align 8
  %247 = load i8*, i8** %20, align 8
  %248 = call i64 @strlen(i8* %247)
  %249 = trunc i64 %248 to i32
  %250 = call i32 @font_driver_get_message_width(i32 %245, i8* %246, i32 %249, i32 1)
  br label %251

251:                                              ; preds = %241, %240
  %252 = phi i32 [ 0, %240 ], [ %250, %241 ]
  store i32 %252, i32* %21, align 4
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* %15, align 4
  %256 = mul i32 %255, 2
  %257 = add i32 %254, %256
  %258 = load i32, i32* %21, align 4
  %259 = add i32 %257, %258
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %15, align 4
  %262 = add i32 %260, %261
  %263 = load i32, i32* %17, align 4
  %264 = add i32 %262, %263
  %265 = add i32 %264, 3
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @ozone_pure_white, align 4
  %273 = call i32 @menu_display_draw_quad(%struct.TYPE_16__* %253, i32 %259, i32 %265, i32 1, i32 25, i32 %268, i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %251, %232
  br label %278

275:                                              ; preds = %188
  %276 = load i32, i32* %17, align 4
  %277 = add i32 %276, 25
  store i32 %277, i32* %17, align 4
  br label %278

278:                                              ; preds = %275, %274
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %9, align 4
  %281 = add i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %182

282:                                              ; preds = %182
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* @OZONE_THEME_TEXTURE_CURSOR_STATIC, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %296 = call i32 (...) @menu_event_get_osk_grid()
  %297 = call i32 (...) @menu_event_get_osk_ptr()
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @menu_display_draw_keyboard(i32 %290, i32 %294, %struct.TYPE_16__* %295, i32 %296, i32 %297, i32 %302)
  %304 = load %struct.string_list*, %struct.string_list** %13, align 8
  %305 = call i32 @string_list_free(%struct.string_list* %304)
  ret void
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @ozone_draw_text(%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @menu_display_draw_keyboard(i32, i32, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @menu_event_get_osk_grid(...) #1

declare dso_local i32 @menu_event_get_osk_ptr(...) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
