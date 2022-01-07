; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdriverslinuxraw_input.c_linuxraw_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdriverslinuxraw_input.c_linuxraw_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { float, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i64* null, align 8
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_8__*, %struct.retro_keybind**, i32, i32, i32, i32)* @linuxraw_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linuxraw_input_state(i8* %0, i64 %1, %struct.TYPE_8__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %24 = alloca i32, align 4
  %25 = bitcast %struct.TYPE_9__* %10 to { i64, %struct.TYPE_8__* }*
  %26 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %25, i32 0, i32 0
  store i64 %1, i64* %26, align 8
  %27 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %25, i32 0, i32 1
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %27, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %17, align 8
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %363 [
    i32 128, label %31
    i32 129, label %324
  ]

31:                                               ; preds = %8
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %188

35:                                               ; preds = %31
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %183, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %186

40:                                               ; preds = %36
  %41 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %41, i64 %43
  %45 = load %struct.retro_keybind*, %struct.retro_keybind** %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %45, i64 %47
  %49 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i32 0, i32 3
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
  %62 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  br label %72

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
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
  %82 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
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
  %95 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  br label %105

97:                                               ; preds = %72
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %97, %86
  %106 = phi i32 [ %96, %86 ], [ %104, %97 ]
  store i32 %106, i32* %21, align 4
  %107 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %107, i64 %109
  %111 = load %struct.retro_keybind*, %struct.retro_keybind** %110, align 8
  %112 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %105
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64*, i64** @rarch_keysym_lut, align 8
  %120 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %120, i64 %122
  %124 = load %struct.retro_keybind*, %struct.retro_keybind** %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %124, i64 %126
  %128 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %119, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %118, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %115
  %137 = load i32, i32* %18, align 4
  %138 = shl i32 1, %137
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %19, align 4
  br label %183

141:                                              ; preds = %115, %105
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @NO_BTN, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %20, align 4
  %154 = call i32 %150(i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %145
  %157 = load i32, i32* %18, align 4
  %158 = shl i32 1, %157
  %159 = load i32, i32* %19, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %19, align 4
  br label %183

161:                                              ; preds = %145, %141
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32 (i32, i32)*, i32 (i32, i32)** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %21, align 4
  %170 = call i32 %166(i32 %168, i32 %169)
  %171 = call i64 @abs(i32 %170)
  %172 = sitofp i64 %171 to float
  %173 = fdiv float %172, 3.276800e+04
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %175 = load float, float* %174, align 8
  %176 = fcmp ogt float %173, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %161
  %178 = load i32, i32* %18, align 4
  %179 = shl i32 1, %178
  %180 = load i32, i32* %19, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %19, align 4
  br label %183

182:                                              ; preds = %161
  br label %183

183:                                              ; preds = %182, %177, %156, %136
  %184 = load i32, i32* %18, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %36

186:                                              ; preds = %36
  %187 = load i32, i32* %19, align 4
  store i32 %187, i32* %9, align 4
  br label %364

188:                                              ; preds = %31
  %189 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %190 = load i32, i32* %13, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %189, i64 %191
  %193 = load %struct.retro_keybind*, %struct.retro_keybind** %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %193, i64 %195
  %197 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NO_BTN, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %188
  %202 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %202, i64 %204
  %206 = load %struct.retro_keybind*, %struct.retro_keybind** %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %206, i64 %208
  %210 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  br label %220

212:                                              ; preds = %188
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %16, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  br label %220

220:                                              ; preds = %212, %201
  %221 = phi i32 [ %211, %201 ], [ %219, %212 ]
  store i32 %221, i32* %22, align 4
  %222 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %223 = load i32, i32* %13, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %222, i64 %224
  %226 = load %struct.retro_keybind*, %struct.retro_keybind** %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %226, i64 %228
  %230 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @AXIS_NONE, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %245

234:                                              ; preds = %220
  %235 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %236 = load i32, i32* %13, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %235, i64 %237
  %239 = load %struct.retro_keybind*, %struct.retro_keybind** %238, align 8
  %240 = load i32, i32* %16, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %239, i64 %241
  %243 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  br label %253

245:                                              ; preds = %220
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = load i32, i32* %16, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  br label %253

253:                                              ; preds = %245, %234
  %254 = phi i32 [ %244, %234 ], [ %252, %245 ]
  store i32 %254, i32* %23, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %257 = icmp ult i32 %255, %256
  br i1 %257, label %258, label %289

258:                                              ; preds = %253
  %259 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %260 = load i32, i32* %13, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %259, i64 %261
  %263 = load %struct.retro_keybind*, %struct.retro_keybind** %262, align 8
  %264 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %289

267:                                              ; preds = %258
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i64*, i64** @rarch_keysym_lut, align 8
  %272 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %273 = load i32, i32* %13, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %272, i64 %274
  %276 = load %struct.retro_keybind*, %struct.retro_keybind** %275, align 8
  %277 = load i32, i32* %16, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %276, i64 %278
  %280 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %271, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds i32, i32* %270, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %267
  store i32 1, i32* %9, align 4
  br label %364

289:                                              ; preds = %267, %258, %253
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* @NO_BTN, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %289
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  %298 = load i32 (i32, i32)*, i32 (i32, i32)** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %22, align 4
  %302 = call i32 %298(i32 %300, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %293
  store i32 1, i32* %9, align 4
  br label %364

305:                                              ; preds = %293, %289
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = load i32 (i32, i32)*, i32 (i32, i32)** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %23, align 4
  %314 = call i32 %310(i32 %312, i32 %313)
  %315 = call i64 @abs(i32 %314)
  %316 = sitofp i64 %315 to float
  %317 = fdiv float %316, 3.276800e+04
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %319 = load float, float* %318, align 8
  %320 = fcmp ogt float %317, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %305
  store i32 1, i32* %9, align 4
  br label %364

322:                                              ; preds = %305
  br label %323

323:                                              ; preds = %322
  br label %363

324:                                              ; preds = %8
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %326 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %327 = load i32, i32* %13, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %326, i64 %328
  %330 = load %struct.retro_keybind*, %struct.retro_keybind** %329, align 8
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* %16, align 4
  %333 = call i32 @linuxraw_analog_pressed(%struct.TYPE_10__* %325, %struct.retro_keybind* %330, i32 %331, i32 %332)
  store i32 %333, i32* %24, align 4
  %334 = load i32, i32* %24, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %361, label %336

336:                                              ; preds = %324
  %337 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %338 = load i32, i32* %13, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %337, i64 %339
  %341 = load %struct.retro_keybind*, %struct.retro_keybind** %340, align 8
  %342 = icmp ne %struct.retro_keybind* %341, null
  br i1 %342, label %343, label %361

343:                                              ; preds = %336
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* %16, align 4
  %350 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %351 = load i32, i32* %13, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %350, i64 %352
  %354 = load %struct.retro_keybind*, %struct.retro_keybind** %353, align 8
  %355 = bitcast %struct.TYPE_9__* %10 to { i64, %struct.TYPE_8__* }*
  %356 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %355, i32 0, i32 1
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = call i32 @input_joypad_analog(%struct.TYPE_11__* %346, i64 %357, %struct.TYPE_8__* %359, i32 %347, i32 %348, i32 %349, %struct.retro_keybind* %354)
  store i32 %360, i32* %24, align 4
  br label %361

361:                                              ; preds = %343, %336, %324
  %362 = load i32, i32* %24, align 4
  store i32 %362, i32* %9, align 4
  br label %364

363:                                              ; preds = %8, %323
  store i32 0, i32* %9, align 4
  br label %364

364:                                              ; preds = %363, %361, %321, %304, %288, %186
  %365 = load i32, i32* %9, align 4
  ret i32 %365
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @linuxraw_analog_pressed(%struct.TYPE_10__*, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_11__*, i64, %struct.TYPE_8__*, i32, i32, i32, %struct.retro_keybind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
