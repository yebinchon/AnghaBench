; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dos_input.c_dos_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dos_input.c_dos_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_8__ = type { float, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_6__*, %struct.retro_keybind**, i32, i32, i32, i32)* @dos_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_input_state(i8* %0, i64 %1, %struct.TYPE_6__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
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
  %24 = bitcast %struct.TYPE_8__* %10 to { i64, %struct.TYPE_6__* }*
  %25 = getelementptr inbounds { i64, %struct.TYPE_6__* }, { i64, %struct.TYPE_6__* }* %24, i32 0, i32 0
  store i64 %1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, %struct.TYPE_6__* }, { i64, %struct.TYPE_6__* }* %24, i32 0, i32 1
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %26, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %17, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %290

32:                                               ; preds = %8
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %289 [
    i32 129, label %34
    i32 128, label %281
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %170

38:                                               ; preds = %34
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %165, %38
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %168

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
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
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
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
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
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
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
  br label %165

129:                                              ; preds = %113, %108
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %21, align 4
  %138 = call i32 %134(i32 %136, i32 %137)
  %139 = call i64 @abs(i32 %138)
  %140 = sitofp i64 %139 to float
  %141 = fdiv float %140, 3.276800e+04
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %143 = load float, float* %142, align 8
  %144 = fcmp ogt float %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %129
  %146 = load i32, i32* %18, align 4
  %147 = shl i32 1, %146
  %148 = load i32, i32* %19, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %19, align 4
  br label %165

150:                                              ; preds = %129
  %151 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %152 = load i32, i32* %13, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %151, i64 %153
  %155 = load %struct.retro_keybind*, %struct.retro_keybind** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @dos_keyboard_port_input_pressed(%struct.retro_keybind* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %150
  %160 = load i32, i32* %18, align 4
  %161 = shl i32 1, %160
  %162 = load i32, i32* %19, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %19, align 4
  br label %165

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %159, %145, %124
  %166 = load i32, i32* %18, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %39

168:                                              ; preds = %39
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %9, align 4
  br label %290

170:                                              ; preds = %34
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
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
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
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
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
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32 (i32, i32)*, i32 (i32, i32)** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %22, align 4
  %249 = call i32 %245(i32 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %240
  store i32 1, i32* %9, align 4
  br label %290

252:                                              ; preds = %240, %235
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32 (i32, i32)*, i32 (i32, i32)** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i32 %257(i32 %259, i32 %260)
  %262 = call i64 @abs(i32 %261)
  %263 = sitofp i64 %262 to float
  %264 = fdiv float %263, 3.276800e+04
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %266 = load float, float* %265, align 8
  %267 = fcmp ogt float %264, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %252
  store i32 1, i32* %9, align 4
  br label %290

269:                                              ; preds = %252
  %270 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %271 = load i32, i32* %13, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %270, i64 %272
  %274 = load %struct.retro_keybind*, %struct.retro_keybind** %273, align 8
  %275 = load i32, i32* %16, align 4
  %276 = call i32 @dos_keyboard_port_input_pressed(%struct.retro_keybind* %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %269
  store i32 1, i32* %9, align 4
  br label %290

279:                                              ; preds = %269
  br label %280

280:                                              ; preds = %279
  br label %289

281:                                              ; preds = %32
  %282 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %283 = load i32, i32* %13, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %282, i64 %284
  %286 = load %struct.retro_keybind*, %struct.retro_keybind** %285, align 8
  %287 = load i32, i32* %16, align 4
  %288 = call i32 @dos_keyboard_port_input_pressed(%struct.retro_keybind* %286, i32 %287)
  store i32 %288, i32* %9, align 4
  br label %290

289:                                              ; preds = %32, %280
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %289, %281, %278, %268, %251, %168, %31
  %291 = load i32, i32* %9, align 4
  ret i32 %291
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @dos_keyboard_port_input_pressed(%struct.retro_keybind*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
