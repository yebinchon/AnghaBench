; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_string_list_new_special.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_string_list_new_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i32 }
%struct.TYPE_15__ = type { i8*, i8* }

@camera_drivers = common dso_local global %struct.TYPE_13__** null, align 8
@location_drivers = common dso_local global %struct.TYPE_20__** null, align 8
@audio_drivers = common dso_local global %struct.TYPE_14__** null, align 8
@video_drivers = common dso_local global %struct.TYPE_17__** null, align 8
@input_drivers = common dso_local global %struct.TYPE_22__** null, align 8
@joypad_drivers = common dso_local global %struct.TYPE_21__** null, align 8
@record_drivers = common dso_local global %struct.TYPE_18__** null, align 8
@midi_drivers = common dso_local global %struct.TYPE_19__** null, align 8
@hid_drivers = common dso_local global %struct.TYPE_23__** null, align 8
@wifi_drivers = common dso_local global %struct.TYPE_16__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @string_list_new_special(i32 %0, i8* %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.string_list_elem_attr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  %28 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %28, %struct.string_list** %14, align 8
  %29 = load %struct.string_list*, %struct.string_list** %14, align 8
  %30 = icmp ne %struct.string_list* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %4
  br label %387

35:                                               ; preds = %31
  %36 = bitcast %union.string_list_elem_attr* %10 to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %384 [
    i32 135, label %39
    i32 140, label %39
    i32 128, label %67
    i32 136, label %67
    i32 142, label %95
    i32 141, label %123
    i32 129, label %146
    i32 139, label %174
    i32 138, label %202
    i32 137, label %203
    i32 132, label %231
    i32 134, label %259
    i32 130, label %287
    i32 131, label %335
    i32 133, label %383
  ]

39:                                               ; preds = %35, %35
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @camera_driver_find_handle(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @camera_drivers, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %45, i64 %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %53, 1
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load %struct.string_list*, %struct.string_list** %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @string_list_append(%struct.string_list* %58, i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %40

66:                                               ; preds = %40
  br label %385

67:                                               ; preds = %35, %35
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %91, %67
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @location_driver_find_handle(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @location_drivers, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %73, i64 %75
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %16, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = add nsw i32 %81, 1
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load %struct.string_list*, %struct.string_list** %14, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @string_list_append(%struct.string_list* %86, i8* %87, i32 %89)
  br label %91

91:                                               ; preds = %72
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %68

94:                                               ; preds = %68
  br label %385

95:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %119, %95
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @audio_driver_find_handle(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @audio_drivers, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 %103
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %17, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = add nsw i32 %109, 1
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load %struct.string_list*, %struct.string_list** %14, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @string_list_append(%struct.string_list* %114, i8* %115, i32 %117)
  br label %119

119:                                              ; preds = %100
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %96

122:                                              ; preds = %96
  br label %385

123:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %142, %123
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @audio_resampler_driver_find_handle(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i32, i32* %11, align 4
  %130 = call i8* @audio_resampler_driver_find_ident(i32 %129)
  store i8* %130, i8** %18, align 8
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = add nsw i32 %132, 1
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = load %struct.string_list*, %struct.string_list** %14, align 8
  %138 = load i8*, i8** %18, align 8
  %139 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @string_list_append(%struct.string_list* %137, i8* %138, i32 %140)
  br label %142

142:                                              ; preds = %128
  %143 = load i32, i32* %11, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %124

145:                                              ; preds = %124
  br label %385

146:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %170, %146
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @video_driver_find_handle(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  %152 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @video_drivers, align 8
  %153 = load i32, i32* %11, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %152, i64 %154
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %19, align 8
  %159 = load i8*, i8** %19, align 8
  %160 = call i32 @strlen(i8* %159)
  %161 = add nsw i32 %160, 1
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load %struct.string_list*, %struct.string_list** %14, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @string_list_append(%struct.string_list* %165, i8* %166, i32 %168)
  br label %170

170:                                              ; preds = %151
  %171 = load i32, i32* %11, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %147

173:                                              ; preds = %147
  br label %385

174:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %198, %174
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @input_driver_find_handle(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @input_drivers, align 8
  %181 = load i32, i32* %11, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %180, i64 %182
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %20, align 8
  %187 = load i8*, i8** %20, align 8
  %188 = call i32 @strlen(i8* %187)
  %189 = add nsw i32 %188, 1
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, %189
  store i32 %192, i32* %190, align 4
  %193 = load %struct.string_list*, %struct.string_list** %14, align 8
  %194 = load i8*, i8** %20, align 8
  %195 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @string_list_append(%struct.string_list* %193, i8* %194, i32 %196)
  br label %198

198:                                              ; preds = %179
  %199 = load i32, i32* %11, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %175

201:                                              ; preds = %175
  br label %385

202:                                              ; preds = %35
  br label %385

203:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %204

204:                                              ; preds = %227, %203
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @joypad_driver_find_handle(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %230

208:                                              ; preds = %204
  %209 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @joypad_drivers, align 8
  %210 = load i32, i32* %11, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %209, i64 %211
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** %21, align 8
  %216 = load i8*, i8** %21, align 8
  %217 = call i32 @strlen(i8* %216)
  %218 = add nsw i32 %217, 1
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, %218
  store i32 %221, i32* %219, align 4
  %222 = load %struct.string_list*, %struct.string_list** %14, align 8
  %223 = load i8*, i8** %21, align 8
  %224 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @string_list_append(%struct.string_list* %222, i8* %223, i32 %225)
  br label %227

227:                                              ; preds = %208
  %228 = load i32, i32* %11, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %204

230:                                              ; preds = %204
  br label %385

231:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %255, %231
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @record_driver_find_handle(i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %258

236:                                              ; preds = %232
  %237 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @record_drivers, align 8
  %238 = load i32, i32* %11, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %237, i64 %239
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  store i8* %243, i8** %22, align 8
  %244 = load i8*, i8** %22, align 8
  %245 = call i32 @strlen(i8* %244)
  %246 = add nsw i32 %245, 1
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, %246
  store i32 %249, i32* %247, align 4
  %250 = load %struct.string_list*, %struct.string_list** %14, align 8
  %251 = load i8*, i8** %22, align 8
  %252 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @string_list_append(%struct.string_list* %250, i8* %251, i32 %253)
  br label %255

255:                                              ; preds = %236
  %256 = load i32, i32* %11, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %232

258:                                              ; preds = %232
  br label %385

259:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %260

260:                                              ; preds = %283, %259
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @midi_driver_find_handle(i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %260
  %265 = load %struct.TYPE_19__**, %struct.TYPE_19__*** @midi_drivers, align 8
  %266 = load i32, i32* %11, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %265, i64 %267
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  store i8* %271, i8** %23, align 8
  %272 = load i8*, i8** %23, align 8
  %273 = call i32 @strlen(i8* %272)
  %274 = add nsw i32 %273, 1
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* %275, align 4
  %277 = add i32 %276, %274
  store i32 %277, i32* %275, align 4
  %278 = load %struct.string_list*, %struct.string_list** %14, align 8
  %279 = load i8*, i8** %23, align 8
  %280 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @string_list_append(%struct.string_list* %278, i8* %279, i32 %281)
  br label %283

283:                                              ; preds = %264
  %284 = load i32, i32* %11, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %11, align 4
  br label %260

286:                                              ; preds = %260
  br label %385

287:                                              ; preds = %35
  %288 = call i32 @core_info_get_list(i32** %12)
  %289 = load i32*, i32** %12, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = load i64*, i64** %9, align 8
  %292 = call i32 @core_info_list_get_supported_cores(i32* %289, i8* %290, %struct.TYPE_15__** %13, i64* %291)
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %294 = icmp ne %struct.TYPE_15__* %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %287
  br label %387

296:                                              ; preds = %287
  %297 = load i64*, i64** %9, align 8
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %387

301:                                              ; preds = %296
  store i32 0, i32* %11, align 4
  br label %302

302:                                              ; preds = %331, %301
  %303 = load i32, i32* %11, align 4
  %304 = zext i32 %303 to i64
  %305 = load i64*, i64** %9, align 8
  %306 = load i64, i64* %305, align 8
  %307 = icmp ult i64 %304, %306
  br i1 %307, label %308, label %334

308:                                              ; preds = %302
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %310 = load i32, i32* %11, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i64 %311
  store %struct.TYPE_15__* %312, %struct.TYPE_15__** %24, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  store i8* %315, i8** %25, align 8
  %316 = load i8*, i8** %25, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %308
  br label %387

319:                                              ; preds = %308
  %320 = load i8*, i8** %25, align 8
  %321 = call i32 @strlen(i8* %320)
  %322 = add nsw i32 %321, 1
  %323 = load i32*, i32** %8, align 8
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %324, %322
  store i32 %325, i32* %323, align 4
  %326 = load %struct.string_list*, %struct.string_list** %14, align 8
  %327 = load i8*, i8** %25, align 8
  %328 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @string_list_append(%struct.string_list* %326, i8* %327, i32 %329)
  br label %331

331:                                              ; preds = %319
  %332 = load i32, i32* %11, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %11, align 4
  br label %302

334:                                              ; preds = %302
  br label %385

335:                                              ; preds = %35
  %336 = call i32 @core_info_get_list(i32** %12)
  %337 = load i32*, i32** %12, align 8
  %338 = load i8*, i8** %7, align 8
  %339 = load i64*, i64** %9, align 8
  %340 = call i32 @core_info_list_get_supported_cores(i32* %337, i8* %338, %struct.TYPE_15__** %13, i64* %339)
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %342 = icmp ne %struct.TYPE_15__* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %335
  br label %387

344:                                              ; preds = %335
  %345 = load i64*, i64** %9, align 8
  %346 = load i64, i64* %345, align 8
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  br label %387

349:                                              ; preds = %344
  store i32 0, i32* %11, align 4
  br label %350

350:                                              ; preds = %379, %349
  %351 = load i32, i32* %11, align 4
  %352 = zext i32 %351 to i64
  %353 = load i64*, i64** %9, align 8
  %354 = load i64, i64* %353, align 8
  %355 = icmp ult i64 %352, %354
  br i1 %355, label %356, label %382

356:                                              ; preds = %350
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %358 = load i32, i32* %11, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i64 %359
  store %struct.TYPE_15__* %360, %struct.TYPE_15__** %26, align 8
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  store i8* %363, i8** %27, align 8
  %364 = load i8*, i8** %27, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %367, label %366

366:                                              ; preds = %356
  br label %387

367:                                              ; preds = %356
  %368 = load i8*, i8** %27, align 8
  %369 = call i32 @strlen(i8* %368)
  %370 = add nsw i32 %369, 1
  %371 = load i32*, i32** %8, align 8
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, %370
  store i32 %373, i32* %371, align 4
  %374 = load %struct.string_list*, %struct.string_list** %14, align 8
  %375 = load i8*, i8** %27, align 8
  %376 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @string_list_append(%struct.string_list* %374, i8* %375, i32 %377)
  br label %379

379:                                              ; preds = %367
  %380 = load i32, i32* %11, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %11, align 4
  br label %350

382:                                              ; preds = %350
  br label %385

383:                                              ; preds = %35
  br label %384

384:                                              ; preds = %35, %383
  br label %387

385:                                              ; preds = %382, %334, %286, %258, %230, %202, %201, %173, %145, %122, %94, %66
  %386 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %386, %struct.string_list** %5, align 8
  br label %390

387:                                              ; preds = %384, %366, %348, %343, %318, %300, %295, %34
  %388 = load %struct.string_list*, %struct.string_list** %14, align 8
  %389 = call i32 @string_list_free(%struct.string_list* %388)
  store %struct.string_list* null, %struct.string_list** %14, align 8
  store %struct.string_list* null, %struct.string_list** %5, align 8
  br label %390

390:                                              ; preds = %387, %385
  %391 = load %struct.string_list*, %struct.string_list** %5, align 8
  ret %struct.string_list* %391
}

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @camera_driver_find_handle(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #1

declare dso_local i32 @location_driver_find_handle(i32) #1

declare dso_local i32 @audio_driver_find_handle(i32) #1

declare dso_local i32 @audio_resampler_driver_find_handle(i32) #1

declare dso_local i8* @audio_resampler_driver_find_ident(i32) #1

declare dso_local i32 @video_driver_find_handle(i32) #1

declare dso_local i32 @input_driver_find_handle(i32) #1

declare dso_local i32 @joypad_driver_find_handle(i32) #1

declare dso_local i32 @record_driver_find_handle(i32) #1

declare dso_local i32 @midi_driver_find_handle(i32) #1

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i32 @core_info_list_get_supported_cores(i32*, i8*, %struct.TYPE_15__**, i64*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
