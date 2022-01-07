; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_switch_input.c_switch_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_switch_input.c_switch_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_12__ = type { float, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_10__*, %struct.retro_keybind**, i32, i32, i32, i32)* @switch_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_input_state(i8* %0, i64 %1, %struct.TYPE_10__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 8
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
  %24 = bitcast %struct.TYPE_12__* %10 to { i64, %struct.TYPE_10__* }*
  %25 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %24, i32 0, i32 0
  store i64 %1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %24, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %26, align 8
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
  %31 = sub nsw i32 %30, 1
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %286

34:                                               ; preds = %8
  %35 = load i32, i32* %14, align 4
  switch i32 %35, label %285 [
    i32 131, label %36
    i32 132, label %259
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %158

40:                                               ; preds = %36
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %41

41:                                               ; preds = %153, %40
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %156

45:                                               ; preds = %41
  %46 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %46, i64 %48
  %50 = load %struct.retro_keybind*, %struct.retro_keybind** %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %50, i64 %52
  %54 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NO_BTN, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %45
  %59 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %59, i64 %61
  %63 = load %struct.retro_keybind*, %struct.retro_keybind** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %63, i64 %65
  %67 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %77

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  br label %77

77:                                               ; preds = %69, %58
  %78 = phi i32 [ %68, %58 ], [ %76, %69 ]
  store i32 %78, i32* %20, align 4
  %79 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %79, i64 %81
  %83 = load %struct.retro_keybind*, %struct.retro_keybind** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %83, i64 %85
  %87 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AXIS_NONE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %77
  %92 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %92, i64 %94
  %96 = load %struct.retro_keybind*, %struct.retro_keybind** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %96, i64 %98
  %100 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %110

102:                                              ; preds = %77
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %110

110:                                              ; preds = %102, %91
  %111 = phi i32 [ %101, %91 ], [ %109, %102 ]
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* @NO_BTN, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32 (i32, i32)*, i32 (i32, i32)** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %20, align 4
  %124 = call i32 %120(i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load i32, i32* %18, align 4
  %128 = shl i32 1, %127
  %129 = load i32, i32* %19, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %19, align 4
  br label %153

131:                                              ; preds = %115, %110
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32 (i32, i32)*, i32 (i32, i32)** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %21, align 4
  %140 = call i32 %136(i32 %138, i32 %139)
  %141 = call i64 @abs(i32 %140)
  %142 = sitofp i64 %141 to float
  %143 = fdiv float %142, 3.276800e+04
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %145 = load float, float* %144, align 8
  %146 = fcmp ogt float %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %131
  %148 = load i32, i32* %18, align 4
  %149 = shl i32 1, %148
  %150 = load i32, i32* %19, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %19, align 4
  br label %153

152:                                              ; preds = %131
  br label %153

153:                                              ; preds = %152, %147, %126
  %154 = load i32, i32* %18, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %18, align 4
  br label %41

156:                                              ; preds = %41
  %157 = load i32, i32* %19, align 4
  store i32 %157, i32* %9, align 4
  br label %286

158:                                              ; preds = %36
  %159 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %160 = load i32, i32* %13, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %159, i64 %161
  %163 = load %struct.retro_keybind*, %struct.retro_keybind** %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %163, i64 %165
  %167 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NO_BTN, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %158
  %172 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %173 = load i32, i32* %13, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %172, i64 %174
  %176 = load %struct.retro_keybind*, %struct.retro_keybind** %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %176, i64 %178
  %180 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  br label %190

182:                                              ; preds = %158
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  br label %190

190:                                              ; preds = %182, %171
  %191 = phi i32 [ %181, %171 ], [ %189, %182 ]
  store i32 %191, i32* %22, align 4
  %192 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %193 = load i32, i32* %13, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %192, i64 %194
  %196 = load %struct.retro_keybind*, %struct.retro_keybind** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %196, i64 %198
  %200 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @AXIS_NONE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %190
  %205 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %206 = load i32, i32* %13, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %205, i64 %207
  %209 = load %struct.retro_keybind*, %struct.retro_keybind** %208, align 8
  %210 = load i32, i32* %16, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %209, i64 %211
  %213 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  br label %223

215:                                              ; preds = %190
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load i32, i32* %16, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  br label %223

223:                                              ; preds = %215, %204
  %224 = phi i32 [ %214, %204 ], [ %222, %215 ]
  store i32 %224, i32* %23, align 4
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* @NO_BTN, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %223
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i32 (i32, i32)*, i32 (i32, i32)** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %22, align 4
  %237 = call i32 %233(i32 %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %228
  store i32 1, i32* %9, align 4
  br label %286

240:                                              ; preds = %228, %223
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32 (i32, i32)*, i32 (i32, i32)** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %23, align 4
  %249 = call i32 %245(i32 %247, i32 %248)
  %250 = call i64 @abs(i32 %249)
  %251 = sitofp i64 %250 to float
  %252 = fdiv float %251, 3.276800e+04
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %254 = load float, float* %253, align 8
  %255 = fcmp ogt float %252, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %240
  store i32 1, i32* %9, align 4
  br label %286

257:                                              ; preds = %240
  br label %258

258:                                              ; preds = %257
  br label %285

259:                                              ; preds = %34
  %260 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %261 = load i32, i32* %13, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %260, i64 %262
  %264 = load %struct.retro_keybind*, %struct.retro_keybind** %263, align 8
  %265 = icmp ne %struct.retro_keybind* %264, null
  br i1 %265, label %266, label %284

266:                                              ; preds = %259
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %274 = load i32, i32* %13, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %273, i64 %275
  %277 = load %struct.retro_keybind*, %struct.retro_keybind** %276, align 8
  %278 = bitcast %struct.TYPE_12__* %10 to { i64, %struct.TYPE_10__* }*
  %279 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %278, i32 0, i32 1
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = call i32 @input_joypad_analog(%struct.TYPE_13__* %269, i64 %280, %struct.TYPE_10__* %282, i32 %270, i32 %271, i32 %272, %struct.retro_keybind* %277)
  store i32 %283, i32* %9, align 4
  br label %286

284:                                              ; preds = %259
  br label %285

285:                                              ; preds = %34, %284, %258
  store i32 0, i32* %9, align 4
  br label %286

286:                                              ; preds = %285, %266, %256, %239, %156, %33
  %287 = load i32, i32* %9, align 4
  ret i32 %287
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_13__*, i64, %struct.TYPE_10__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
