; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_psp_input.c_psp_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_psp_input.c_psp_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_9__ = type { float, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_8__*, %struct.retro_keybind**, i32, i32, i32, i32)* @psp_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_input_state(i8* %0, i64 %1, %struct.TYPE_8__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = bitcast %struct.TYPE_9__* %10 to { i64, %struct.TYPE_8__* }*
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
  %28 = bitcast i8* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %17, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %284

32:                                               ; preds = %8
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %283 [
    i32 130, label %34
    i32 131, label %257
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %156

38:                                               ; preds = %34
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %151, %38
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %154

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
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
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
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
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
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
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
  br label %151

129:                                              ; preds = %113, %108
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %21, align 4
  %138 = call i32 %134(i32 %136, i32 %137)
  %139 = call i64 @abs(i32 %138)
  %140 = sitofp i64 %139 to float
  %141 = fdiv float %140, 3.276800e+04
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %143 = load float, float* %142, align 8
  %144 = fcmp ogt float %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %129
  %146 = load i32, i32* %18, align 4
  %147 = shl i32 1, %146
  %148 = load i32, i32* %19, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %19, align 4
  br label %151

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150, %145, %124
  %152 = load i32, i32* %18, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %39

154:                                              ; preds = %39
  %155 = load i32, i32* %19, align 4
  store i32 %155, i32* %9, align 4
  br label %284

156:                                              ; preds = %34
  %157 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %158 = load i32, i32* %13, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %157, i64 %159
  %161 = load %struct.retro_keybind*, %struct.retro_keybind** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %161, i64 %163
  %165 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NO_BTN, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %156
  %170 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %171 = load i32, i32* %13, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %170, i64 %172
  %174 = load %struct.retro_keybind*, %struct.retro_keybind** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %174, i64 %176
  %178 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  br label %188

180:                                              ; preds = %156
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  br label %188

188:                                              ; preds = %180, %169
  %189 = phi i32 [ %179, %169 ], [ %187, %180 ]
  store i32 %189, i32* %22, align 4
  %190 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %191 = load i32, i32* %13, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %190, i64 %192
  %194 = load %struct.retro_keybind*, %struct.retro_keybind** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %194, i64 %196
  %198 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @AXIS_NONE, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %188
  %203 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %204 = load i32, i32* %13, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %203, i64 %205
  %207 = load %struct.retro_keybind*, %struct.retro_keybind** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %207, i64 %209
  %211 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  br label %221

213:                                              ; preds = %188
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load i32, i32* %16, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  br label %221

221:                                              ; preds = %213, %202
  %222 = phi i32 [ %212, %202 ], [ %220, %213 ]
  store i32 %222, i32* %23, align 4
  %223 = load i32, i32* %22, align 4
  %224 = load i32, i32* @NO_BTN, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32 (i32, i32)*, i32 (i32, i32)** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %22, align 4
  %235 = call i32 %231(i32 %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %226
  store i32 1, i32* %9, align 4
  br label %284

238:                                              ; preds = %226, %221
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32 (i32, i32)*, i32 (i32, i32)** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %23, align 4
  %247 = call i32 %243(i32 %245, i32 %246)
  %248 = call i64 @abs(i32 %247)
  %249 = sitofp i64 %248 to float
  %250 = fdiv float %249, 3.276800e+04
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %252 = load float, float* %251, align 8
  %253 = fcmp ogt float %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %238
  store i32 1, i32* %9, align 4
  br label %284

255:                                              ; preds = %238
  br label %256

256:                                              ; preds = %255
  br label %283

257:                                              ; preds = %32
  %258 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %259 = load i32, i32* %13, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %258, i64 %260
  %262 = load %struct.retro_keybind*, %struct.retro_keybind** %261, align 8
  %263 = icmp ne %struct.retro_keybind* %262, null
  br i1 %263, label %264, label %282

264:                                              ; preds = %257
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %16, align 4
  %271 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %272 = load i32, i32* %13, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %271, i64 %273
  %275 = load %struct.retro_keybind*, %struct.retro_keybind** %274, align 8
  %276 = bitcast %struct.TYPE_9__* %10 to { i64, %struct.TYPE_8__* }*
  %277 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %276, i32 0, i32 1
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %279, align 8
  %281 = call i32 @input_joypad_analog(%struct.TYPE_11__* %267, i64 %278, %struct.TYPE_8__* %280, i32 %268, i32 %269, i32 %270, %struct.retro_keybind* %275)
  store i32 %281, i32* %9, align 4
  br label %284

282:                                              ; preds = %257
  br label %283

283:                                              ; preds = %32, %282, %256
  store i32 0, i32* %9, align 4
  br label %284

284:                                              ; preds = %283, %264, %254, %237, %154, %31
  %285 = load i32, i32* %9, align 4
  ret i32 %285
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_11__*, i64, %struct.TYPE_8__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
