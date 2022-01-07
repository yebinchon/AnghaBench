; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.retro_keybind = type { i64, i32, i32 }
%struct.TYPE_11__ = type { float, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@apple_key_state = common dso_local global i32* null, align 8
@rarch_keysym_lut = common dso_local global i64* null, align 8
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_10__*, %struct.retro_keybind**, i32, i32, i32, i32)* @cocoa_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cocoa_input_state(i8* %0, i64 %1, %struct.TYPE_10__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = bitcast %struct.TYPE_11__* %10 to { i64, %struct.TYPE_10__* }*
  %26 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %25, i32 0, i32 0
  store i64 %1, i64* %26, align 8
  %27 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %25, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %27, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %17, align 8
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %362 [
    i32 131, label %31
    i32 132, label %301
    i32 130, label %331
    i32 129, label %348
    i32 134, label %352
    i32 128, label %356
    i32 133, label %356
  ]

31:                                               ; preds = %8
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %176

35:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %171, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %174

40:                                               ; preds = %36
  %41 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %41, i64 %43
  %45 = load %struct.retro_keybind*, %struct.retro_keybind** %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %45, i64 %47
  %49 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NO_BTN, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %40
  %54 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %54, i64 %56
  %58 = load %struct.retro_keybind*, %struct.retro_keybind** %57, align 8
  %59 = load i32, i32* %18, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %58, i64 %60
  %62 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  br label %72

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %64, %53
  %73 = phi i32 [ %63, %53 ], [ %71, %64 ]
  store i32 %73, i32* %20, align 4
  %74 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %74, i64 %76
  %78 = load %struct.retro_keybind*, %struct.retro_keybind** %77, align 8
  %79 = load i32, i32* %18, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %78, i64 %80
  %82 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AXIS_NONE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %72
  %87 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %87, i64 %89
  %91 = load %struct.retro_keybind*, %struct.retro_keybind** %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %91, i64 %93
  %95 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  br label %105

97:                                               ; preds = %72
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %97, %86
  %106 = phi i32 [ %96, %86 ], [ %104, %97 ]
  store i32 %106, i32* %21, align 4
  %107 = load i32*, i32** @apple_key_state, align 8
  %108 = load i64*, i64** @rarch_keysym_lut, align 8
  %109 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %109, i64 %111
  %113 = load %struct.retro_keybind*, %struct.retro_keybind** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %113, i64 %115
  %117 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %108, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %107, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %105
  %125 = load i32, i32* %18, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %171

129:                                              ; preds = %105
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @NO_BTN, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %20, align 4
  %142 = call i32 %138(i32 %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load i32, i32* %18, align 4
  %146 = shl i32 1, %145
  %147 = load i32, i32* %19, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %19, align 4
  br label %171

149:                                              ; preds = %133, %129
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32 (i32, i32)*, i32 (i32, i32)** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %21, align 4
  %158 = call i32 %154(i32 %156, i32 %157)
  %159 = call i64 @abs(i32 %158)
  %160 = sitofp i64 %159 to float
  %161 = fdiv float %160, 3.276800e+04
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %163 = load float, float* %162, align 8
  %164 = fcmp ogt float %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %149
  %166 = load i32, i32* %18, align 4
  %167 = shl i32 1, %166
  %168 = load i32, i32* %19, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %19, align 4
  br label %171

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170, %165, %144, %124
  %172 = load i32, i32* %18, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %36

174:                                              ; preds = %36
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %9, align 4
  br label %363

176:                                              ; preds = %31
  %177 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %177, i64 %179
  %181 = load %struct.retro_keybind*, %struct.retro_keybind** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %181, i64 %183
  %185 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NO_BTN, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %176
  %190 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %191 = load i32, i32* %13, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %190, i64 %192
  %194 = load %struct.retro_keybind*, %struct.retro_keybind** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %194, i64 %196
  %198 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  br label %208

200:                                              ; preds = %176
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  br label %208

208:                                              ; preds = %200, %189
  %209 = phi i32 [ %199, %189 ], [ %207, %200 ]
  store i32 %209, i32* %22, align 4
  %210 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %211 = load i32, i32* %13, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %210, i64 %212
  %214 = load %struct.retro_keybind*, %struct.retro_keybind** %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %214, i64 %216
  %218 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @AXIS_NONE, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %208
  %223 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %224 = load i32, i32* %13, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %223, i64 %225
  %227 = load %struct.retro_keybind*, %struct.retro_keybind** %226, align 8
  %228 = load i32, i32* %16, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %227, i64 %229
  %231 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  br label %241

233:                                              ; preds = %208
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  br label %241

241:                                              ; preds = %233, %222
  %242 = phi i32 [ %232, %222 ], [ %240, %233 ]
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %245 = icmp ult i32 %243, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %241
  %247 = load i32*, i32** @apple_key_state, align 8
  %248 = load i64*, i64** @rarch_keysym_lut, align 8
  %249 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %250 = load i32, i32* %13, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %249, i64 %251
  %253 = load %struct.retro_keybind*, %struct.retro_keybind** %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %253, i64 %255
  %257 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds i64, i64* %248, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i32, i32* %247, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %246
  store i32 1, i32* %9, align 4
  br label %363

265:                                              ; preds = %246
  br label %266

266:                                              ; preds = %265, %241
  %267 = load i32, i32* %22, align 4
  %268 = load i32, i32* @NO_BTN, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = load i32 (i32, i32)*, i32 (i32, i32)** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %22, align 4
  %279 = call i32 %275(i32 %277, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %270
  store i32 1, i32* %9, align 4
  br label %363

282:                                              ; preds = %270, %266
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32 (i32, i32)*, i32 (i32, i32)** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %23, align 4
  %291 = call i32 %287(i32 %289, i32 %290)
  %292 = call i64 @abs(i32 %291)
  %293 = sitofp i64 %292 to float
  %294 = fdiv float %293, 3.276800e+04
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %296 = load float, float* %295, align 8
  %297 = fcmp ogt float %294, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %282
  store i32 1, i32* %9, align 4
  br label %363

299:                                              ; preds = %282
  br label %300

300:                                              ; preds = %299
  br label %362

301:                                              ; preds = %8
  store i32 0, i32* %24, align 4
  %302 = load i32, i32* %24, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %329, label %304

304:                                              ; preds = %301
  %305 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %306 = load i32, i32* %13, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %305, i64 %307
  %309 = load %struct.retro_keybind*, %struct.retro_keybind** %308, align 8
  %310 = icmp ne %struct.retro_keybind* %309, null
  br i1 %310, label %311, label %329

311:                                              ; preds = %304
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* %16, align 4
  %318 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %319 = load i32, i32* %13, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %318, i64 %320
  %322 = load %struct.retro_keybind*, %struct.retro_keybind** %321, align 8
  %323 = bitcast %struct.TYPE_11__* %10 to { i64, %struct.TYPE_10__* }*
  %324 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %323, i32 0, i32 1
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = call i32 @input_joypad_analog(%struct.TYPE_13__* %314, i64 %325, %struct.TYPE_10__* %327, i32 %315, i32 %316, i32 %317, %struct.retro_keybind* %322)
  store i32 %328, i32* %24, align 4
  br label %329

329:                                              ; preds = %311, %304, %301
  %330 = load i32, i32* %24, align 4
  store i32 %330, i32* %9, align 4
  br label %363

331:                                              ; preds = %8
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* @RETROK_LAST, align 4
  %334 = icmp ult i32 %332, %333
  br i1 %334, label %335, label %345

335:                                              ; preds = %331
  %336 = load i32*, i32** @apple_key_state, align 8
  %337 = load i64*, i64** @rarch_keysym_lut, align 8
  %338 = load i32, i32* %16, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds i32, i32* %336, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br label %345

345:                                              ; preds = %335, %331
  %346 = phi i1 [ false, %331 ], [ %344, %335 ]
  %347 = zext i1 %346 to i32
  store i32 %347, i32* %9, align 4
  br label %363

348:                                              ; preds = %8
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %350 = load i32, i32* %16, align 4
  %351 = call i32 @cocoa_mouse_state(%struct.TYPE_12__* %349, i32 %350)
  store i32 %351, i32* %9, align 4
  br label %363

352:                                              ; preds = %8
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %354 = load i32, i32* %16, align 4
  %355 = call i32 @cocoa_mouse_state_screen(%struct.TYPE_12__* %353, i32 %354)
  store i32 %355, i32* %9, align 4
  br label %363

356:                                              ; preds = %8, %8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* %15, align 4
  %360 = load i32, i32* %16, align 4
  %361 = call i32 @cocoa_pointer_state(%struct.TYPE_12__* %357, i32 %358, i32 %359, i32 %360)
  store i32 %361, i32* %9, align 4
  br label %363

362:                                              ; preds = %8, %300
  store i32 0, i32* %9, align 4
  br label %363

363:                                              ; preds = %362, %356, %352, %348, %345, %329, %298, %281, %264, %174
  %364 = load i32, i32* %9, align 4
  ret i32 %364
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_13__*, i64, %struct.TYPE_10__*, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @cocoa_mouse_state(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cocoa_mouse_state_screen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cocoa_pointer_state(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
