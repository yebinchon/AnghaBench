; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_ps4_input.c_ps4_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_ps4_input.c_ps4_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_8__ = type { float, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_7__*, %struct.retro_keybind**, i32, i32, i32, i32)* @ps4_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps4_input_state(i8* %0, i64 %1, %struct.TYPE_7__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %24 = bitcast %struct.TYPE_8__* %10 to { i64, %struct.TYPE_7__* }*
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
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %17, align 8
  %29 = load i32, i32* %14, align 4
  switch i32 %29, label %279 [
    i32 128, label %30
    i32 129, label %253
  ]

30:                                               ; preds = %8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %152

34:                                               ; preds = %30
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %147, %34
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %150

39:                                               ; preds = %35
  %40 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %40, i64 %42
  %44 = load %struct.retro_keybind*, %struct.retro_keybind** %43, align 8
  %45 = load i32, i32* %18, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %44, i64 %46
  %48 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NO_BTN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %53, i64 %55
  %57 = load %struct.retro_keybind*, %struct.retro_keybind** %56, align 8
  %58 = load i32, i32* %18, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %57, i64 %59
  %61 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  br label %71

63:                                               ; preds = %39
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %63, %52
  %72 = phi i32 [ %62, %52 ], [ %70, %63 ]
  store i32 %72, i32* %20, align 4
  %73 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %73, i64 %75
  %77 = load %struct.retro_keybind*, %struct.retro_keybind** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %77, i64 %79
  %81 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AXIS_NONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %71
  %86 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %86, i64 %88
  %90 = load %struct.retro_keybind*, %struct.retro_keybind** %89, align 8
  %91 = load i32, i32* %18, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %90, i64 %92
  %94 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %104

96:                                               ; preds = %71
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %104

104:                                              ; preds = %96, %85
  %105 = phi i32 [ %95, %85 ], [ %103, %96 ]
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @NO_BTN, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32 (i32, i32)*, i32 (i32, i32)** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %20, align 4
  %118 = call i32 %114(i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load i32, i32* %18, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %19, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %19, align 4
  br label %147

125:                                              ; preds = %109, %104
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %21, align 4
  %134 = call i32 %130(i32 %132, i32 %133)
  %135 = call i64 @abs(i32 %134)
  %136 = sitofp i64 %135 to float
  %137 = fdiv float %136, 3.276800e+04
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %139 = load float, float* %138, align 8
  %140 = fcmp ogt float %137, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %125
  %142 = load i32, i32* %18, align 4
  %143 = shl i32 1, %142
  %144 = load i32, i32* %19, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %19, align 4
  br label %147

146:                                              ; preds = %125
  br label %147

147:                                              ; preds = %146, %141, %120
  %148 = load i32, i32* %18, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %35

150:                                              ; preds = %35
  %151 = load i32, i32* %19, align 4
  store i32 %151, i32* %9, align 4
  br label %280

152:                                              ; preds = %30
  %153 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %153, i64 %155
  %157 = load %struct.retro_keybind*, %struct.retro_keybind** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %157, i64 %159
  %161 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NO_BTN, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %152
  %166 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %166, i64 %168
  %170 = load %struct.retro_keybind*, %struct.retro_keybind** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %170, i64 %172
  %174 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  br label %184

176:                                              ; preds = %152
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  br label %184

184:                                              ; preds = %176, %165
  %185 = phi i32 [ %175, %165 ], [ %183, %176 ]
  store i32 %185, i32* %22, align 4
  %186 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %187 = load i32, i32* %13, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %186, i64 %188
  %190 = load %struct.retro_keybind*, %struct.retro_keybind** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %190, i64 %192
  %194 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @AXIS_NONE, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %184
  %199 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %199, i64 %201
  %203 = load %struct.retro_keybind*, %struct.retro_keybind** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %203, i64 %205
  %207 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  br label %217

209:                                              ; preds = %184
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  br label %217

217:                                              ; preds = %209, %198
  %218 = phi i32 [ %208, %198 ], [ %216, %209 ]
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* @NO_BTN, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i32 (i32, i32)*, i32 (i32, i32)** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %22, align 4
  %231 = call i32 %227(i32 %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %222
  store i32 1, i32* %9, align 4
  br label %280

234:                                              ; preds = %222, %217
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32 (i32, i32)*, i32 (i32, i32)** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %23, align 4
  %243 = call i32 %239(i32 %241, i32 %242)
  %244 = call i64 @abs(i32 %243)
  %245 = sitofp i64 %244 to float
  %246 = fdiv float %245, 3.276800e+04
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %248 = load float, float* %247, align 8
  %249 = fcmp ogt float %246, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %234
  store i32 1, i32* %9, align 4
  br label %280

251:                                              ; preds = %234
  br label %252

252:                                              ; preds = %251
  br label %279

253:                                              ; preds = %8
  %254 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %255 = load i32, i32* %13, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %254, i64 %256
  %258 = load %struct.retro_keybind*, %struct.retro_keybind** %257, align 8
  %259 = icmp ne %struct.retro_keybind* %258, null
  br i1 %259, label %260, label %278

260:                                              ; preds = %253
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %16, align 4
  %267 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %268 = load i32, i32* %13, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %267, i64 %269
  %271 = load %struct.retro_keybind*, %struct.retro_keybind** %270, align 8
  %272 = bitcast %struct.TYPE_8__* %10 to { i64, %struct.TYPE_7__* }*
  %273 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %272, i32 0, i32 1
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = call i32 @input_joypad_analog(%struct.TYPE_10__* %263, i64 %274, %struct.TYPE_7__* %276, i32 %264, i32 %265, i32 %266, %struct.retro_keybind* %271)
  store i32 %277, i32* %9, align 4
  br label %280

278:                                              ; preds = %253
  br label %279

279:                                              ; preds = %8, %278, %252
  store i32 0, i32* %9, align 4
  br label %280

280:                                              ; preds = %279, %260, %250, %233, %150
  %281 = load i32, i32* %9, align 4
  ret i32 %281
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_10__*, i64, %struct.TYPE_7__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
