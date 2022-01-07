; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_wayland_input.c_input_wl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.retro_keybind = type { i64, i32, i32 }
%struct.TYPE_15__ = type { float, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i32* null, align 8
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@MAX_TOUCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_14__*, %struct.retro_keybind**, i32, i32, i32, i32)* @input_wl_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_wl_state(i8* %0, i64 %1, %struct.TYPE_14__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = bitcast %struct.TYPE_15__* %10 to { i64, %struct.TYPE_14__* }*
  %26 = getelementptr inbounds { i64, %struct.TYPE_14__* }, { i64, %struct.TYPE_14__* }* %25, i32 0, i32 0
  store i64 %1, i64* %26, align 8
  %27 = getelementptr inbounds { i64, %struct.TYPE_14__* }, { i64, %struct.TYPE_14__* }* %25, i32 0, i32 1
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %27, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %17, align 8
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %403 [
    i32 132, label %31
    i32 133, label %319
    i32 131, label %358
    i32 129, label %366
    i32 135, label %370
    i32 128, label %374
    i32 134, label %386
    i32 130, label %399
  ]

31:                                               ; preds = %8
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %185

35:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %180, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %183

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
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
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
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %97, %86
  %106 = phi i32 [ %96, %86 ], [ %104, %97 ]
  store i32 %106, i32* %21, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** @rarch_keysym_lut, align 8
  %111 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %111, i64 %113
  %115 = load %struct.retro_keybind*, %struct.retro_keybind** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %115, i64 %117
  %119 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %110, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BIT_GET(i32 %109, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %105
  %126 = load i32, i32* %18, align 4
  %127 = shl i32 1, %126
  %128 = load i32, i32* %19, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %19, align 4
  br label %180

130:                                              ; preds = %105
  %131 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %132 = load i32, i32* %13, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %131, i64 %133
  %135 = load %struct.retro_keybind*, %struct.retro_keybind** %134, align 8
  %136 = icmp ne %struct.retro_keybind* %135, null
  br i1 %136, label %137, label %179

137:                                              ; preds = %130
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* @NO_BTN, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32 (i32, i32)*, i32 (i32, i32)** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i32 %146(i32 %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %141
  %153 = load i32, i32* %18, align 4
  %154 = shl i32 1, %153
  %155 = load i32, i32* %19, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %19, align 4
  br label %180

157:                                              ; preds = %141, %137
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32 (i32, i32)*, i32 (i32, i32)** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %21, align 4
  %166 = call i32 %162(i32 %164, i32 %165)
  %167 = call i64 @abs(i32 %166)
  %168 = sitofp i64 %167 to float
  %169 = fdiv float %168, 3.276800e+04
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %171 = load float, float* %170, align 8
  %172 = fcmp ogt float %169, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %157
  %174 = load i32, i32* %18, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* %19, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %19, align 4
  br label %180

178:                                              ; preds = %157
  br label %179

179:                                              ; preds = %178, %130
  br label %180

180:                                              ; preds = %179, %173, %152, %125
  %181 = load i32, i32* %18, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %18, align 4
  br label %36

183:                                              ; preds = %36
  %184 = load i32, i32* %19, align 4
  store i32 %184, i32* %9, align 4
  br label %404

185:                                              ; preds = %31
  %186 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %187 = load i32, i32* %13, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %186, i64 %188
  %190 = load %struct.retro_keybind*, %struct.retro_keybind** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %190, i64 %192
  %194 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @NO_BTN, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %185
  %199 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %199, i64 %201
  %203 = load %struct.retro_keybind*, %struct.retro_keybind** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %203, i64 %205
  %207 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  br label %217

209:                                              ; preds = %185
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  br label %217

217:                                              ; preds = %209, %198
  %218 = phi i32 [ %208, %198 ], [ %216, %209 ]
  store i32 %218, i32* %22, align 4
  %219 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %220 = load i32, i32* %13, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %219, i64 %221
  %223 = load %struct.retro_keybind*, %struct.retro_keybind** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %223, i64 %225
  %227 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @AXIS_NONE, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %217
  %232 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %233 = load i32, i32* %13, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %232, i64 %234
  %236 = load %struct.retro_keybind*, %struct.retro_keybind** %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %236, i64 %238
  %240 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  br label %250

242:                                              ; preds = %217
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  br label %250

250:                                              ; preds = %242, %231
  %251 = phi i32 [ %241, %231 ], [ %249, %242 ]
  store i32 %251, i32* %23, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %276

255:                                              ; preds = %250
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32*, i32** @rarch_keysym_lut, align 8
  %260 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %261 = load i32, i32* %13, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %260, i64 %262
  %264 = load %struct.retro_keybind*, %struct.retro_keybind** %263, align 8
  %265 = load i32, i32* %16, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %264, i64 %266
  %268 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %259, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @BIT_GET(i32 %258, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %255
  store i32 1, i32* %9, align 4
  br label %404

275:                                              ; preds = %255
  br label %276

276:                                              ; preds = %275, %250
  %277 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %278 = load i32, i32* %13, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %277, i64 %279
  %281 = load %struct.retro_keybind*, %struct.retro_keybind** %280, align 8
  %282 = icmp ne %struct.retro_keybind* %281, null
  br i1 %282, label %283, label %317

283:                                              ; preds = %276
  %284 = load i32, i32* %22, align 4
  %285 = load i32, i32* @NO_BTN, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %299

287:                                              ; preds = %283
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = load i32 (i32, i32)*, i32 (i32, i32)** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %22, align 4
  %296 = call i32 %292(i32 %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %287
  store i32 1, i32* %9, align 4
  br label %404

299:                                              ; preds = %287, %283
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32 (i32, i32)*, i32 (i32, i32)** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %23, align 4
  %308 = call i32 %304(i32 %306, i32 %307)
  %309 = call i64 @abs(i32 %308)
  %310 = sitofp i64 %309 to float
  %311 = fdiv float %310, 3.276800e+04
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %313 = load float, float* %312, align 8
  %314 = fcmp ogt float %311, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %299
  store i32 1, i32* %9, align 4
  br label %404

316:                                              ; preds = %299
  br label %317

317:                                              ; preds = %316, %276
  br label %318

318:                                              ; preds = %317
  br label %403

319:                                              ; preds = %8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %321 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %322 = load i32, i32* %13, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %321, i64 %323
  %325 = load %struct.retro_keybind*, %struct.retro_keybind** %324, align 8
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @input_wl_analog_pressed(%struct.TYPE_16__* %320, %struct.retro_keybind* %325, i32 %326, i32 %327)
  store i32 %328, i32* %24, align 4
  %329 = load i32, i32* %24, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %356, label %331

331:                                              ; preds = %319
  %332 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %333 = load i32, i32* %13, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %332, i64 %334
  %336 = load %struct.retro_keybind*, %struct.retro_keybind** %335, align 8
  %337 = icmp ne %struct.retro_keybind* %336, null
  br i1 %337, label %338, label %356

338:                                              ; preds = %331
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %340, align 8
  %342 = load i32, i32* %13, align 4
  %343 = load i32, i32* %15, align 4
  %344 = load i32, i32* %16, align 4
  %345 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %346 = load i32, i32* %13, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %345, i64 %347
  %349 = load %struct.retro_keybind*, %struct.retro_keybind** %348, align 8
  %350 = bitcast %struct.TYPE_15__* %10 to { i64, %struct.TYPE_14__* }*
  %351 = getelementptr inbounds { i64, %struct.TYPE_14__* }, { i64, %struct.TYPE_14__* }* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds { i64, %struct.TYPE_14__* }, { i64, %struct.TYPE_14__* }* %350, i32 0, i32 1
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %353, align 8
  %355 = call i32 @input_joypad_analog(%struct.TYPE_13__* %341, i64 %352, %struct.TYPE_14__* %354, i32 %342, i32 %343, i32 %344, %struct.retro_keybind* %349)
  store i32 %355, i32* %24, align 4
  br label %356

356:                                              ; preds = %338, %331, %319
  %357 = load i32, i32* %24, align 4
  store i32 %357, i32* %9, align 4
  br label %404

358:                                              ; preds = %8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %360 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %361 = load i32, i32* %13, align 4
  %362 = load i32, i32* %14, align 4
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* %16, align 4
  %365 = call i32 @input_wl_state_kb(%struct.TYPE_16__* %359, %struct.retro_keybind** %360, i32 %361, i32 %362, i32 %363, i32 %364)
  store i32 %365, i32* %9, align 4
  br label %404

366:                                              ; preds = %8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %368 = load i32, i32* %16, align 4
  %369 = call i32 @input_wl_mouse_state(%struct.TYPE_16__* %367, i32 %368, i32 0)
  store i32 %369, i32* %9, align 4
  br label %404

370:                                              ; preds = %8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %372 = load i32, i32* %16, align 4
  %373 = call i32 @input_wl_mouse_state(%struct.TYPE_16__* %371, i32 %372, i32 1)
  store i32 %373, i32* %9, align 4
  br label %404

374:                                              ; preds = %8
  %375 = load i32, i32* %15, align 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %374
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %379 = load i32, i32* %15, align 4
  %380 = load i32, i32* %16, align 4
  %381 = load i32, i32* %14, align 4
  %382 = icmp eq i32 %381, 134
  %383 = zext i1 %382 to i32
  %384 = call i32 @input_wl_pointer_state(%struct.TYPE_16__* %378, i32 %379, i32 %380, i32 %383)
  store i32 %384, i32* %9, align 4
  br label %404

385:                                              ; preds = %374
  br label %403

386:                                              ; preds = %8
  %387 = load i32, i32* %15, align 4
  %388 = load i32, i32* @MAX_TOUCHES, align 4
  %389 = icmp ult i32 %387, %388
  br i1 %389, label %390, label %398

390:                                              ; preds = %386
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* %16, align 4
  %394 = load i32, i32* %14, align 4
  %395 = icmp eq i32 %394, 134
  %396 = zext i1 %395 to i32
  %397 = call i32 @input_wl_touch_state(%struct.TYPE_16__* %391, i32 %392, i32 %393, i32 %396)
  store i32 %397, i32* %9, align 4
  br label %404

398:                                              ; preds = %386
  br label %403

399:                                              ; preds = %8
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %401 = load i32, i32* %16, align 4
  %402 = call i32 @input_wl_lightgun_state(%struct.TYPE_16__* %400, i32 %401)
  store i32 %402, i32* %9, align 4
  br label %404

403:                                              ; preds = %8, %398, %385, %318
  store i32 0, i32* %9, align 4
  br label %404

404:                                              ; preds = %403, %399, %390, %377, %370, %366, %358, %356, %315, %298, %274, %183
  %405 = load i32, i32* %9, align 4
  ret i32 %405
}

declare dso_local i32 @BIT_GET(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_wl_analog_pressed(%struct.TYPE_16__*, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @input_wl_state_kb(%struct.TYPE_16__*, %struct.retro_keybind**, i32, i32, i32, i32) #1

declare dso_local i32 @input_wl_mouse_state(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @input_wl_pointer_state(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @input_wl_touch_state(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @input_wl_lightgun_state(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
