; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_wiiu_input.c_wiiu_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_wiiu_input.c_wiiu_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_10__ = type { float, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@keyboardState = common dso_local global i32* null, align 8
@keyboardChannel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_8__*, %struct.retro_keybind**, i32, i32, i32, i32)* @wiiu_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiu_input_state(i8* %0, i64 %1, %struct.TYPE_8__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = bitcast %struct.TYPE_10__* %10 to { i64, %struct.TYPE_8__* }*
  %25 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %24, i32 0, i32 0
  store i64 %1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %24, i32 0, i32 1
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %26, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %17, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %37 = icmp ne %struct.retro_keybind** %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %39, i64 %41
  %43 = load %struct.retro_keybind*, %struct.retro_keybind** %42, align 8
  %44 = icmp ne %struct.retro_keybind* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %35, %31, %8
  store i32 0, i32* %9, align 4
  br label %318

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  switch i32 %47, label %317 [
    i32 130, label %48
    i32 129, label %271
    i32 131, label %287
    i32 128, label %313
    i32 132, label %313
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %170

52:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %165, %52
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %168

57:                                               ; preds = %53
  %58 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %58, i64 %60
  %62 = load %struct.retro_keybind*, %struct.retro_keybind** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %62, i64 %64
  %66 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NO_BTN, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %57
  %71 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %71, i64 %73
  %75 = load %struct.retro_keybind*, %struct.retro_keybind** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %75, i64 %77
  %79 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  br label %89

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  br label %89

89:                                               ; preds = %81, %70
  %90 = phi i32 [ %80, %70 ], [ %88, %81 ]
  store i32 %90, i32* %20, align 4
  %91 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %91, i64 %93
  %95 = load %struct.retro_keybind*, %struct.retro_keybind** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %95, i64 %97
  %99 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AXIS_NONE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %89
  %104 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %104, i64 %106
  %108 = load %struct.retro_keybind*, %struct.retro_keybind** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %108, i64 %110
  %112 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  br label %122

114:                                              ; preds = %89
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %18, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %114, %103
  %123 = phi i32 [ %113, %103 ], [ %121, %114 ]
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @NO_BTN, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32 (i32, i32)*, i32 (i32, i32)** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 %132(i32 %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %127
  %139 = load i32, i32* %18, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* %19, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %19, align 4
  br label %165

143:                                              ; preds = %127, %122
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32 (i32, i32)*, i32 (i32, i32)** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %21, align 4
  %152 = call i32 %148(i32 %150, i32 %151)
  %153 = call i64 @abs(i32 %152)
  %154 = sitofp i64 %153 to float
  %155 = fdiv float %154, 3.276800e+04
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %157 = load float, float* %156, align 8
  %158 = fcmp ogt float %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %143
  %160 = load i32, i32* %18, align 4
  %161 = shl i32 1, %160
  %162 = load i32, i32* %19, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %19, align 4
  br label %165

164:                                              ; preds = %143
  br label %165

165:                                              ; preds = %164, %159, %138
  %166 = load i32, i32* %18, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %53

168:                                              ; preds = %53
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %9, align 4
  br label %318

170:                                              ; preds = %48
  %171 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %171, i64 %173
  %175 = load %struct.retro_keybind*, %struct.retro_keybind** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %175, i64 %177
  %179 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @NO_BTN, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %170
  %184 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %185 = load i32, i32* %13, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %184, i64 %186
  %188 = load %struct.retro_keybind*, %struct.retro_keybind** %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %188, i64 %190
  %192 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  br label %202

194:                                              ; preds = %170
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  br label %202

202:                                              ; preds = %194, %183
  %203 = phi i32 [ %193, %183 ], [ %201, %194 ]
  store i32 %203, i32* %22, align 4
  %204 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %205 = load i32, i32* %13, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %204, i64 %206
  %208 = load %struct.retro_keybind*, %struct.retro_keybind** %207, align 8
  %209 = load i32, i32* %16, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %208, i64 %210
  %212 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @AXIS_NONE, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %202
  %217 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %218 = load i32, i32* %13, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %217, i64 %219
  %221 = load %struct.retro_keybind*, %struct.retro_keybind** %220, align 8
  %222 = load i32, i32* %16, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %221, i64 %223
  %225 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  br label %235

227:                                              ; preds = %202
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  br label %235

235:                                              ; preds = %227, %216
  %236 = phi i32 [ %226, %216 ], [ %234, %227 ]
  store i32 %236, i32* %23, align 4
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* @NO_BTN, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = load i32 (i32, i32)*, i32 (i32, i32)** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %22, align 4
  %249 = call i32 %245(i32 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %240
  store i32 1, i32* %9, align 4
  br label %318

252:                                              ; preds = %240, %235
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32 (i32, i32)*, i32 (i32, i32)** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i32 %257(i32 %259, i32 %260)
  %262 = call i64 @abs(i32 %261)
  %263 = sitofp i64 %262 to float
  %264 = fdiv float %263, 3.276800e+04
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %266 = load float, float* %265, align 8
  %267 = fcmp ogt float %264, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %252
  store i32 1, i32* %9, align 4
  br label %318

269:                                              ; preds = %252
  br label %270

270:                                              ; preds = %269
  br label %317

271:                                              ; preds = %46
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* @RETROK_LAST, align 4
  %274 = icmp ult i32 %272, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %271
  %276 = load i32*, i32** @keyboardState, align 8
  %277 = load i32, i32* %16, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %275
  %283 = load i32, i32* @keyboardChannel, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 1, i32* %9, align 4
  br label %318

286:                                              ; preds = %282, %275, %271
  store i32 0, i32* %9, align 4
  br label %318

287:                                              ; preds = %46
  %288 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %289 = load i32, i32* %13, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %288, i64 %290
  %292 = load %struct.retro_keybind*, %struct.retro_keybind** %291, align 8
  %293 = icmp ne %struct.retro_keybind* %292, null
  br i1 %293, label %294, label %312

294:                                              ; preds = %287
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %296, align 8
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %302 = load i32, i32* %13, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %301, i64 %303
  %305 = load %struct.retro_keybind*, %struct.retro_keybind** %304, align 8
  %306 = bitcast %struct.TYPE_10__* %10 to { i64, %struct.TYPE_8__* }*
  %307 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %306, i32 0, i32 1
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = call i32 @input_joypad_analog(%struct.TYPE_11__* %297, i64 %308, %struct.TYPE_8__* %310, i32 %298, i32 %299, i32 %300, %struct.retro_keybind* %305)
  store i32 %311, i32* %9, align 4
  br label %318

312:                                              ; preds = %287
  br label %317

313:                                              ; preds = %46, %46
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @wiiu_pointer_device_state(%struct.TYPE_9__* %314, i32 %315)
  store i32 %316, i32* %9, align 4
  br label %318

317:                                              ; preds = %46, %312, %270
  store i32 0, i32* %9, align 4
  br label %318

318:                                              ; preds = %317, %313, %294, %286, %285, %268, %251, %168, %45
  %319 = load i32, i32* %9, align 4
  ret i32 %319
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_11__*, i64, %struct.TYPE_8__*, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @wiiu_pointer_device_state(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
