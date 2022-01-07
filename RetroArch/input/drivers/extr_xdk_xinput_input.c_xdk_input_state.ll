; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_xdk_xinput_input.c_xdk_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_xdk_xinput_input.c_xdk_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_9__ = type { float, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_7__*, %struct.retro_keybind**, i32, i32, i32, i32)* @xdk_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdk_input_state(i8* %0, i64 %1, %struct.TYPE_7__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = bitcast %struct.TYPE_9__* %10 to { i64, %struct.TYPE_7__* }*
  %25 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %24, i32 0, i32 0
  store i64 %1, i64* %25, align 8
  %26 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %24, i32 0, i32 1
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %26, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %17, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %285

33:                                               ; preds = %8
  %34 = load i32, i32* %14, align 4
  switch i32 %34, label %284 [
    i32 128, label %35
    i32 129, label %258
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %157

39:                                               ; preds = %35
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %152, %39
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %155

44:                                               ; preds = %40
  %45 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %45, i64 %47
  %49 = load %struct.retro_keybind*, %struct.retro_keybind** %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %49, i64 %51
  %53 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NO_BTN, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
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
  br label %76

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* %18, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %68, %57
  %77 = phi i32 [ %67, %57 ], [ %75, %68 ]
  store i32 %77, i32* %20, align 4
  %78 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %78, i64 %80
  %82 = load %struct.retro_keybind*, %struct.retro_keybind** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %82, i64 %84
  %86 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AXIS_NONE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %76
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
  br label %109

101:                                              ; preds = %76
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  br label %109

109:                                              ; preds = %101, %90
  %110 = phi i32 [ %100, %90 ], [ %108, %101 ]
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* @NO_BTN, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32 (i32, i32)*, i32 (i32, i32)** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %20, align 4
  %123 = call i32 %119(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load i32, i32* %18, align 4
  %127 = shl i32 1, %126
  %128 = load i32, i32* %19, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %19, align 4
  br label %152

130:                                              ; preds = %114, %109
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32 (i32, i32)*, i32 (i32, i32)** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %21, align 4
  %139 = call i32 %135(i32 %137, i32 %138)
  %140 = call i64 @abs(i32 %139)
  %141 = sitofp i64 %140 to float
  %142 = fdiv float %141, 3.276800e+04
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %144 = load float, float* %143, align 8
  %145 = fcmp ogt float %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %130
  %147 = load i32, i32* %18, align 4
  %148 = shl i32 1, %147
  %149 = load i32, i32* %19, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %19, align 4
  br label %152

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %146, %125
  %153 = load i32, i32* %18, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %40

155:                                              ; preds = %40
  %156 = load i32, i32* %19, align 4
  store i32 %156, i32* %9, align 4
  br label %285

157:                                              ; preds = %35
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
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
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
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
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
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32 (i32, i32)*, i32 (i32, i32)** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %22, align 4
  %236 = call i32 %232(i32 %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  store i32 1, i32* %9, align 4
  br label %285

239:                                              ; preds = %227, %222
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32 (i32, i32)*, i32 (i32, i32)** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %23, align 4
  %248 = call i32 %244(i32 %246, i32 %247)
  %249 = call i64 @abs(i32 %248)
  %250 = sitofp i64 %249 to float
  %251 = fdiv float %250, 3.276800e+04
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
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

258:                                              ; preds = %33
  %259 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %260 = load i32, i32* %13, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %259, i64 %261
  %263 = load %struct.retro_keybind*, %struct.retro_keybind** %262, align 8
  %264 = icmp ne %struct.retro_keybind* %263, null
  br i1 %264, label %265, label %283

265:                                              ; preds = %258
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %15, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %273 = load i32, i32* %13, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %272, i64 %274
  %276 = load %struct.retro_keybind*, %struct.retro_keybind** %275, align 8
  %277 = bitcast %struct.TYPE_9__* %10 to { i64, %struct.TYPE_7__* }*
  %278 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %277, i32 0, i32 1
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = call i32 @input_joypad_analog(%struct.TYPE_10__* %268, i64 %279, %struct.TYPE_7__* %281, i32 %269, i32 %270, i32 %271, %struct.retro_keybind* %276)
  store i32 %282, i32* %9, align 4
  br label %285

283:                                              ; preds = %258
  br label %284

284:                                              ; preds = %33, %283, %257
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %284, %265, %255, %238, %155, %32
  %286 = load i32, i32* %9, align 4
  ret i32 %286
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_10__*, i64, %struct.TYPE_7__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
