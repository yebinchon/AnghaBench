; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_ps3_input.c_ps3_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_ps3_input.c_ps3_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_10__ = type { float, i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@retval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_8__*, %struct.retro_keybind**, i32, i32, i32, i32)* @ps3_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3_input_state(i8* %0, i64 %1, %struct.TYPE_8__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %28 = bitcast i8* %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %17, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %285

32:                                               ; preds = %8
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %284 [
    i32 130, label %34
    i32 134, label %258
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %157

38:                                               ; preds = %34
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %152, %38
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %155

43:                                               ; preds = %39
  %44 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %44, i64 %46
  %48 = load %struct.retro_keybind*, %struct.retro_keybind** %47, align 8
  %49 = load i32, i32* %18, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i64 %50
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NO_BTN, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %43
  %57 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %57, i64 %59
  %61 = load %struct.retro_keybind*, %struct.retro_keybind** %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %61, i64 %63
  %65 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %75

67:                                               ; preds = %43
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %67, %56
  %76 = phi i32 [ %66, %56 ], [ %74, %67 ]
  store i32 %76, i32* %20, align 4
  %77 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %77, i64 %79
  %81 = load %struct.retro_keybind*, %struct.retro_keybind** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %81, i64 %83
  %85 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AXIS_NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %75
  %90 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %90, i64 %92
  %94 = load %struct.retro_keybind*, %struct.retro_keybind** %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %94, i64 %96
  %98 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  br label %108

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  br label %108

108:                                              ; preds = %100, %89
  %109 = phi i32 [ %99, %89 ], [ %107, %100 ]
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @NO_BTN, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %20, align 4
  %122 = call i32 %118(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load i32, i32* %18, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %152

129:                                              ; preds = %113, %108
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %21, align 4
  %138 = call i32 %134(i32 %136, i32 %137)
  %139 = call i64 @abs(i32 %138)
  %140 = sitofp i64 %139 to float
  %141 = fdiv float %140, 3.276800e+04
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %143 = load float, float* %142, align 8
  %144 = fcmp ogt float %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %129
  %146 = load i32, i32* %18, align 4
  %147 = shl i32 1, %146
  %148 = load i32, i32* %19, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %19, align 4
  br label %152

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %145, %124
  %153 = load i32, i32* %18, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %39

155:                                              ; preds = %39
  %156 = load i32, i32* %19, align 4
  store i32 %156, i32* %9, align 4
  br label %285

157:                                              ; preds = %34
  %158 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %158, i64 %160
  %162 = load %struct.retro_keybind*, %struct.retro_keybind** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %162, i64 %164
  %166 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @NO_BTN, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %157
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
  br label %189

181:                                              ; preds = %157
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  br label %189

189:                                              ; preds = %181, %170
  %190 = phi i32 [ %180, %170 ], [ %188, %181 ]
  store i32 %190, i32* %22, align 4
  %191 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %192 = load i32, i32* %13, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %191, i64 %193
  %195 = load %struct.retro_keybind*, %struct.retro_keybind** %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %195, i64 %197
  %199 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @AXIS_NONE, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %189
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
  br label %222

214:                                              ; preds = %189
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  br label %222

222:                                              ; preds = %214, %203
  %223 = phi i32 [ %213, %203 ], [ %221, %214 ]
  store i32 %223, i32* %23, align 4
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* @NO_BTN, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = load i32 (i32, i32)*, i32 (i32, i32)** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %22, align 4
  %236 = call i32 %232(i32 %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  store i32 1, i32* %9, align 4
  br label %285

239:                                              ; preds = %227, %222
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32 (i32, i32)*, i32 (i32, i32)** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %23, align 4
  %248 = call i32 %244(i32 %246, i32 %247)
  %249 = call i64 @abs(i32 %248)
  %250 = sitofp i64 %249 to float
  %251 = fdiv float %250, 3.276800e+04
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %253 = load float, float* %252, align 8
  %254 = fcmp ogt float %251, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %239
  store i32 1, i32* %9, align 4
  br label %285

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %256
  br label %284

258:                                              ; preds = %32
  %259 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %260 = load i32, i32* %13, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %259, i64 %261
  %263 = load %struct.retro_keybind*, %struct.retro_keybind** %262, align 8
  %264 = icmp ne %struct.retro_keybind* %263, null
  br i1 %264, label %265, label %283

265:                                              ; preds = %258
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %15, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %273 = load i32, i32* %13, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %272, i64 %274
  %276 = load %struct.retro_keybind*, %struct.retro_keybind** %275, align 8
  %277 = bitcast %struct.TYPE_10__* %10 to { i64, %struct.TYPE_8__* }*
  %278 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %277, i32 0, i32 1
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = call i32 @input_joypad_analog(%struct.TYPE_12__* %268, i64 %279, %struct.TYPE_8__* %281, i32 %269, i32 %270, i32 %271, %struct.retro_keybind* %276)
  store i32 %282, i32* %9, align 4
  br label %285

283:                                              ; preds = %258
  br label %284

284:                                              ; preds = %32, %283, %257
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %284, %265, %255, %238, %155, %31
  %286 = load i32, i32* %9, align 4
  ret i32 %286
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_12__*, i64, %struct.TYPE_8__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
