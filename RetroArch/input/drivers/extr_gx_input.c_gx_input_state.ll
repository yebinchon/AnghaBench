; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_gx_input.c_gx_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_gx_input.c_gx_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_10__ = type { float, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_9__*, %struct.retro_keybind**, i32, i32, i32, i32)* @gx_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_input_state(i8* %0, i64 %1, %struct.TYPE_9__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = bitcast %struct.TYPE_10__* %10 to { i64, %struct.TYPE_9__* }*
  %25 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %24, i32 0, i32 0
  store i64 %1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %24, i32 0, i32 1
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %26, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %17, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %8
  store i32 0, i32* %9, align 4
  br label %288

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  switch i32 %37, label %287 [
    i32 130, label %38
    i32 131, label %261
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %160

42:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %155, %42
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %158

47:                                               ; preds = %43
  %48 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %48, i64 %50
  %52 = load %struct.retro_keybind*, %struct.retro_keybind** %51, align 8
  %53 = load i32, i32* %18, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %52, i64 %54
  %56 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NO_BTN, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %47
  %61 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %61, i64 %63
  %65 = load %struct.retro_keybind*, %struct.retro_keybind** %64, align 8
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %65, i64 %67
  %69 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %79

71:                                               ; preds = %47
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %71, %60
  %80 = phi i32 [ %70, %60 ], [ %78, %71 ]
  store i32 %80, i32* %20, align 4
  %81 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %81, i64 %83
  %85 = load %struct.retro_keybind*, %struct.retro_keybind** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %85, i64 %87
  %89 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AXIS_NONE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %79
  %94 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %94, i64 %96
  %98 = load %struct.retro_keybind*, %struct.retro_keybind** %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %98, i64 %100
  %102 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %112

104:                                              ; preds = %79
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  br label %112

112:                                              ; preds = %104, %93
  %113 = phi i32 [ %103, %93 ], [ %111, %104 ]
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @NO_BTN, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32 (i32, i32)*, i32 (i32, i32)** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %20, align 4
  %126 = call i32 %122(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load i32, i32* %18, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %19, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %19, align 4
  br label %155

133:                                              ; preds = %117, %112
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %21, align 4
  %142 = call i32 %138(i32 %140, i32 %141)
  %143 = call i64 @abs(i32 %142)
  %144 = sitofp i64 %143 to float
  %145 = fdiv float %144, 3.276800e+04
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %147 = load float, float* %146, align 8
  %148 = fcmp ogt float %145, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %133
  %150 = load i32, i32* %18, align 4
  %151 = shl i32 1, %150
  %152 = load i32, i32* %19, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %19, align 4
  br label %155

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %154, %149, %128
  %156 = load i32, i32* %18, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %43

158:                                              ; preds = %43
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %9, align 4
  br label %288

160:                                              ; preds = %38
  %161 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %161, i64 %163
  %165 = load %struct.retro_keybind*, %struct.retro_keybind** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %165, i64 %167
  %169 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NO_BTN, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %160
  %174 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %175 = load i32, i32* %13, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %174, i64 %176
  %178 = load %struct.retro_keybind*, %struct.retro_keybind** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %178, i64 %180
  %182 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  br label %192

184:                                              ; preds = %160
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  br label %192

192:                                              ; preds = %184, %173
  %193 = phi i32 [ %183, %173 ], [ %191, %184 ]
  store i32 %193, i32* %22, align 4
  %194 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %194, i64 %196
  %198 = load %struct.retro_keybind*, %struct.retro_keybind** %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %198, i64 %200
  %202 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AXIS_NONE, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %192
  %207 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %208 = load i32, i32* %13, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %207, i64 %209
  %211 = load %struct.retro_keybind*, %struct.retro_keybind** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %211, i64 %213
  %215 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  br label %225

217:                                              ; preds = %192
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  br label %225

225:                                              ; preds = %217, %206
  %226 = phi i32 [ %216, %206 ], [ %224, %217 ]
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* @NO_BTN, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32 (i32, i32)*, i32 (i32, i32)** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %22, align 4
  %239 = call i32 %235(i32 %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  store i32 1, i32* %9, align 4
  br label %288

242:                                              ; preds = %230, %225
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i32 (i32, i32)*, i32 (i32, i32)** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %23, align 4
  %251 = call i32 %247(i32 %249, i32 %250)
  %252 = call i64 @abs(i32 %251)
  %253 = sitofp i64 %252 to float
  %254 = fdiv float %253, 3.276800e+04
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %256 = load float, float* %255, align 8
  %257 = fcmp ogt float %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %242
  store i32 1, i32* %9, align 4
  br label %288

259:                                              ; preds = %242
  br label %260

260:                                              ; preds = %259
  br label %287

261:                                              ; preds = %36
  %262 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %263 = load i32, i32* %13, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %262, i64 %264
  %266 = load %struct.retro_keybind*, %struct.retro_keybind** %265, align 8
  %267 = icmp ne %struct.retro_keybind* %266, null
  br i1 %267, label %268, label %286

268:                                              ; preds = %261
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %16, align 4
  %275 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %276 = load i32, i32* %13, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %275, i64 %277
  %279 = load %struct.retro_keybind*, %struct.retro_keybind** %278, align 8
  %280 = bitcast %struct.TYPE_10__* %10 to { i64, %struct.TYPE_9__* }*
  %281 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %280, i32 0, i32 1
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = call i32 @input_joypad_analog(%struct.TYPE_12__* %271, i64 %282, %struct.TYPE_9__* %284, i32 %272, i32 %273, i32 %274, %struct.retro_keybind* %279)
  store i32 %285, i32* %9, align 4
  br label %288

286:                                              ; preds = %261
  br label %287

287:                                              ; preds = %36, %286, %260
  store i32 0, i32* %9, align 4
  br label %288

288:                                              ; preds = %287, %268, %258, %241, %158, %35
  %289 = load i32, i32* %9, align 4
  ret i32 %289
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_12__*, i64, %struct.TYPE_9__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
