; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_chan_render_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_chan_render_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, %struct.TYPE_5__*, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EG_TIMER_OVERFLOW = common dso_local global i64 0, align 8
@SLOT1 = common dso_local global i64 0, align 8
@EG_OFF = common dso_local global i64 0, align 8
@SLOT2 = common dso_local global i64 0, align 8
@SLOT3 = common dso_local global i64 0, align 8
@SLOT4 = common dso_local global i64 0, align 8
@ENV_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @chan_render_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chan_render_loop(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %806, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %809

33:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 65535
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 16
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 21
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 21
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 20
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 @advance_lfo(i32 %47, i64 %50, i64 %57)
  %59 = shl i32 %58, 16
  %60 = or i32 %43, %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 20
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 21
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %39, %33
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %201, %70
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EG_TIMER_OVERFLOW, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %202

84:                                               ; preds = %78
  %85 = load i64, i64* @EG_TIMER_OVERFLOW, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 19
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 18
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i64, i64* @SLOT1, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EG_OFF, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %84
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 18
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i64, i64* @SLOT1, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 19
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @update_eg_phase(%struct.TYPE_7__* %112, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %105, %84
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 18
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i64, i64* @SLOT2, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EG_OFF, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %120
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 18
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i64, i64* @SLOT2, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 19
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @update_eg_phase(%struct.TYPE_7__* %139, i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %132, %120
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 18
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i64, i64* @SLOT3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @EG_OFF, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %147
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 18
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = load i64, i64* @SLOT3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %165
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 19
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @update_eg_phase(%struct.TYPE_7__* %166, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %159, %147
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 18
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load i64, i64* @SLOT4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @EG_OFF, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %174
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 18
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i64, i64* @SLOT4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 19
  %196 = load i32, i32* %195, align 8
  %197 = call i8* @update_eg_phase(%struct.TYPE_7__* %193, i32 %196)
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %186, %174
  br label %78

202:                                              ; preds = %78
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %806

209:                                              ; preds = %202
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %9, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %209
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i64, i64* @SLOT1, align 8
  %223 = add i64 %222, 8
  %224 = trunc i64 %223 to i32
  %225 = shl i32 1, %224
  %226 = and i32 %221, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %218
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, 192
  %236 = ashr i32 %235, 6
  %237 = add nsw i32 %236, 24
  %238 = ashr i32 %231, %237
  %239 = load i32, i32* %9, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %9, align 4
  br label %241

241:                                              ; preds = %228, %218, %209
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @ENV_QUIET, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %245, label %285

245:                                              ; preds = %241
  store i32 0, i32* %12, align 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 61440
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = ashr i32 %254, 16
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = shl i32 %258, 16
  %260 = ashr i32 %259, 16
  %261 = add nsw i32 %255, %260
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, 61440
  %266 = ashr i32 %265, 12
  %267 = shl i32 %261, %266
  store i32 %267, i32* %12, align 4
  br label %268

268:                                              ; preds = %251, %245
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = shl i32 %271, 16
  store i32 %272, i32* %270, align 8
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 17
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %12, align 4
  %278 = call i64 @op_calc1(i32 %275, i32 %276, i32 %277)
  %279 = trunc i64 %278 to i16
  %280 = zext i16 %279 to i32
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %290

285:                                              ; preds = %241
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = shl i32 %288, 16
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %285, %268
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  store i32 %293, i32* %9, align 4
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %10, align 4
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %11, align 4
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = and i32 %302, 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %358

305:                                              ; preds = %290
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, 192
  %313 = ashr i32 %312, 6
  %314 = add nsw i32 %313, 24
  %315 = ashr i32 %308, %314
  store i32 %315, i32* %13, align 4
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i64, i64* @SLOT3, align 8
  %320 = add i64 %319, 8
  %321 = trunc i64 %320 to i32
  %322 = shl i32 1, %321
  %323 = and i32 %318, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %305
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %9, align 4
  %328 = add i32 %327, %326
  store i32 %328, i32* %9, align 4
  br label %329

329:                                              ; preds = %325, %305
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i64, i64* @SLOT2, align 8
  %334 = add i64 %333, 8
  %335 = trunc i64 %334 to i32
  %336 = shl i32 1, %335
  %337 = and i32 %332, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %329
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* %10, align 4
  %342 = add i32 %341, %340
  store i32 %342, i32* %10, align 4
  br label %343

343:                                              ; preds = %339, %329
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i64, i64* @SLOT4, align 8
  %348 = add i64 %347, 8
  %349 = trunc i64 %348 to i32
  %350 = shl i32 1, %349
  %351 = and i32 %346, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %343
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %11, align 4
  %356 = add i32 %355, %354
  store i32 %356, i32* %11, align 4
  br label %357

357:                                              ; preds = %353, %343
  br label %358

358:                                              ; preds = %357, %290
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 18
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  switch i32 %363, label %717 [
    i32 0, label %364
    i32 1, label %410
    i32 2, label %456
    i32 3, label %503
    i32 4, label %550
    i32 5, label %589
    i32 6, label %636
    i32 7, label %676
  ]

364:                                              ; preds = %358
  store i32 0, i32* %16, align 4
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 8
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %14, align 4
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 8
  %371 = ashr i32 %370, 16
  store i32 %371, i32* %15, align 4
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* @ENV_QUIET, align 4
  %374 = icmp ult i32 %372, %373
  br i1 %374, label %375, label %382

375:                                              ; preds = %364
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 13
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %9, align 4
  %380 = load i32, i32* %14, align 4
  %381 = call i32 @op_calc(i32 %378, i32 %379, i32 %380)
  store i32 %381, i32* %16, align 4
  br label %382

382:                                              ; preds = %375, %364
  %383 = load i32, i32* %10, align 4
  %384 = load i32, i32* @ENV_QUIET, align 4
  %385 = icmp ult i32 %383, %384
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 15
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %10, align 4
  %391 = load i32, i32* %15, align 4
  %392 = call i32 @op_calc(i32 %389, i32 %390, i32 %391)
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 8
  store i32 %392, i32* %394, align 4
  br label %398

395:                                              ; preds = %382
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 8
  store i32 0, i32* %397, align 4
  br label %398

398:                                              ; preds = %395, %386
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* @ENV_QUIET, align 4
  %401 = icmp ult i32 %399, %400
  br i1 %401, label %402, label %409

402:                                              ; preds = %398
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 11
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* %11, align 4
  %407 = load i32, i32* %16, align 4
  %408 = call i32 @op_calc(i32 %405, i32 %406, i32 %407)
  store i32 %408, i32* %8, align 4
  br label %409

409:                                              ; preds = %402, %398
  br label %717

410:                                              ; preds = %358
  store i32 0, i32* %18, align 4
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 8
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %17, align 4
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 8
  %417 = ashr i32 %416, 16
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 8
  store i32 %417, i32* %419, align 4
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* @ENV_QUIET, align 4
  %422 = icmp ult i32 %420, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %410
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 13
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %9, align 4
  %428 = load i32, i32* %17, align 4
  %429 = call i32 @op_calc(i32 %426, i32 %427, i32 %428)
  store i32 %429, i32* %18, align 4
  br label %430

430:                                              ; preds = %423, %410
  %431 = load i32, i32* %10, align 4
  %432 = load i32, i32* @ENV_QUIET, align 4
  %433 = icmp ult i32 %431, %432
  br i1 %433, label %434, label %444

434:                                              ; preds = %430
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 15
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* %10, align 4
  %439 = call i32 @op_calc(i32 %437, i32 %438, i32 0)
  %440 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 8
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, %439
  store i32 %443, i32* %441, align 4
  br label %444

444:                                              ; preds = %434, %430
  %445 = load i32, i32* %11, align 4
  %446 = load i32, i32* @ENV_QUIET, align 4
  %447 = icmp ult i32 %445, %446
  br i1 %447, label %448, label %455

448:                                              ; preds = %444
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 11
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* %11, align 4
  %453 = load i32, i32* %18, align 4
  %454 = call i32 @op_calc(i32 %451, i32 %452, i32 %453)
  store i32 %454, i32* %8, align 4
  br label %455

455:                                              ; preds = %448, %444
  br label %717

456:                                              ; preds = %358
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 8
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %19, align 4
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = ashr i32 %462, 16
  store i32 %463, i32* %20, align 4
  %464 = load i32, i32* %9, align 4
  %465 = load i32, i32* @ENV_QUIET, align 4
  %466 = icmp ult i32 %464, %465
  br i1 %466, label %467, label %476

467:                                              ; preds = %456
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 13
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* %9, align 4
  %472 = load i32, i32* %19, align 4
  %473 = call i32 @op_calc(i32 %470, i32 %471, i32 %472)
  %474 = load i32, i32* %20, align 4
  %475 = add nsw i32 %474, %473
  store i32 %475, i32* %20, align 4
  br label %476

476:                                              ; preds = %467, %456
  %477 = load i32, i32* %10, align 4
  %478 = load i32, i32* @ENV_QUIET, align 4
  %479 = icmp ult i32 %477, %478
  br i1 %479, label %480, label %488

480:                                              ; preds = %476
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 15
  %483 = load i32, i32* %482, align 8
  %484 = load i32, i32* %10, align 4
  %485 = call i32 @op_calc(i32 %483, i32 %484, i32 0)
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 8
  store i32 %485, i32* %487, align 4
  br label %491

488:                                              ; preds = %476
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 8
  store i32 0, i32* %490, align 4
  br label %491

491:                                              ; preds = %488, %480
  %492 = load i32, i32* %11, align 4
  %493 = load i32, i32* @ENV_QUIET, align 4
  %494 = icmp ult i32 %492, %493
  br i1 %494, label %495, label %502

495:                                              ; preds = %491
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 11
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %11, align 4
  %500 = load i32, i32* %20, align 4
  %501 = call i32 @op_calc(i32 %498, i32 %499, i32 %500)
  store i32 %501, i32* %8, align 4
  br label %502

502:                                              ; preds = %495, %491
  br label %717

503:                                              ; preds = %358
  %504 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %504, i32 0, i32 8
  %506 = load i32, i32* %505, align 4
  store i32 %506, i32* %22, align 4
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 7
  %509 = load i32, i32* %508, align 8
  %510 = ashr i32 %509, 16
  store i32 %510, i32* %21, align 4
  %511 = load i32, i32* %9, align 4
  %512 = load i32, i32* @ENV_QUIET, align 4
  %513 = icmp ult i32 %511, %512
  br i1 %513, label %514, label %522

514:                                              ; preds = %503
  %515 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 13
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* %9, align 4
  %519 = call i32 @op_calc(i32 %517, i32 %518, i32 0)
  %520 = load i32, i32* %22, align 4
  %521 = add nsw i32 %520, %519
  store i32 %521, i32* %22, align 4
  br label %522

522:                                              ; preds = %514, %503
  %523 = load i32, i32* %10, align 4
  %524 = load i32, i32* @ENV_QUIET, align 4
  %525 = icmp ult i32 %523, %524
  br i1 %525, label %526, label %535

526:                                              ; preds = %522
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 15
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* %10, align 4
  %531 = load i32, i32* %21, align 4
  %532 = call i32 @op_calc(i32 %529, i32 %530, i32 %531)
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 8
  store i32 %532, i32* %534, align 4
  br label %538

535:                                              ; preds = %522
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %537 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %536, i32 0, i32 8
  store i32 0, i32* %537, align 4
  br label %538

538:                                              ; preds = %535, %526
  %539 = load i32, i32* %11, align 4
  %540 = load i32, i32* @ENV_QUIET, align 4
  %541 = icmp ult i32 %539, %540
  br i1 %541, label %542, label %549

542:                                              ; preds = %538
  %543 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 11
  %545 = load i32, i32* %544, align 8
  %546 = load i32, i32* %11, align 4
  %547 = load i32, i32* %22, align 4
  %548 = call i32 @op_calc(i32 %545, i32 %546, i32 %547)
  store i32 %548, i32* %8, align 4
  br label %549

549:                                              ; preds = %542, %538
  br label %717

550:                                              ; preds = %358
  store i32 0, i32* %24, align 4
  %551 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %551, i32 0, i32 7
  %553 = load i32, i32* %552, align 8
  %554 = ashr i32 %553, 16
  store i32 %554, i32* %23, align 4
  %555 = load i32, i32* %9, align 4
  %556 = load i32, i32* @ENV_QUIET, align 4
  %557 = icmp ult i32 %555, %556
  br i1 %557, label %558, label %564

558:                                              ; preds = %550
  %559 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 13
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* %9, align 4
  %563 = call i32 @op_calc(i32 %561, i32 %562, i32 0)
  store i32 %563, i32* %24, align 4
  br label %564

564:                                              ; preds = %558, %550
  %565 = load i32, i32* %10, align 4
  %566 = load i32, i32* @ENV_QUIET, align 4
  %567 = icmp ult i32 %565, %566
  br i1 %567, label %568, label %575

568:                                              ; preds = %564
  %569 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %569, i32 0, i32 15
  %571 = load i32, i32* %570, align 8
  %572 = load i32, i32* %10, align 4
  %573 = load i32, i32* %23, align 4
  %574 = call i32 @op_calc(i32 %571, i32 %572, i32 %573)
  store i32 %574, i32* %8, align 4
  br label %575

575:                                              ; preds = %568, %564
  %576 = load i32, i32* %11, align 4
  %577 = load i32, i32* @ENV_QUIET, align 4
  %578 = icmp ult i32 %576, %577
  br i1 %578, label %579, label %588

579:                                              ; preds = %575
  %580 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i32 0, i32 11
  %582 = load i32, i32* %581, align 8
  %583 = load i32, i32* %11, align 4
  %584 = load i32, i32* %24, align 4
  %585 = call i32 @op_calc(i32 %582, i32 %583, i32 %584)
  %586 = load i32, i32* %8, align 4
  %587 = add nsw i32 %586, %585
  store i32 %587, i32* %8, align 4
  br label %588

588:                                              ; preds = %579, %575
  br label %717

589:                                              ; preds = %358
  %590 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 8
  %592 = load i32, i32* %591, align 4
  store i32 %592, i32* %25, align 4
  %593 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %594 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %593, i32 0, i32 7
  %595 = load i32, i32* %594, align 8
  %596 = ashr i32 %595, 16
  store i32 %596, i32* %27, align 4
  store i32 %596, i32* %26, align 4
  %597 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %598 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %597, i32 0, i32 8
  store i32 %596, i32* %598, align 4
  %599 = load i32, i32* %9, align 4
  %600 = load i32, i32* @ENV_QUIET, align 4
  %601 = icmp ult i32 %599, %600
  br i1 %601, label %602, label %609

602:                                              ; preds = %589
  %603 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 13
  %605 = load i32, i32* %604, align 8
  %606 = load i32, i32* %9, align 4
  %607 = load i32, i32* %25, align 4
  %608 = call i32 @op_calc(i32 %605, i32 %606, i32 %607)
  store i32 %608, i32* %8, align 4
  br label %609

609:                                              ; preds = %602, %589
  %610 = load i32, i32* %10, align 4
  %611 = load i32, i32* @ENV_QUIET, align 4
  %612 = icmp ult i32 %610, %611
  br i1 %612, label %613, label %622

613:                                              ; preds = %609
  %614 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %614, i32 0, i32 15
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* %10, align 4
  %618 = load i32, i32* %26, align 4
  %619 = call i32 @op_calc(i32 %616, i32 %617, i32 %618)
  %620 = load i32, i32* %8, align 4
  %621 = add nsw i32 %620, %619
  store i32 %621, i32* %8, align 4
  br label %622

622:                                              ; preds = %613, %609
  %623 = load i32, i32* %11, align 4
  %624 = load i32, i32* @ENV_QUIET, align 4
  %625 = icmp ult i32 %623, %624
  br i1 %625, label %626, label %635

626:                                              ; preds = %622
  %627 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %628 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %627, i32 0, i32 11
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* %11, align 4
  %631 = load i32, i32* %27, align 4
  %632 = call i32 @op_calc(i32 %629, i32 %630, i32 %631)
  %633 = load i32, i32* %8, align 4
  %634 = add nsw i32 %633, %632
  store i32 %634, i32* %8, align 4
  br label %635

635:                                              ; preds = %626, %622
  br label %717

636:                                              ; preds = %358
  %637 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %638 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i32 0, i32 7
  %639 = load i32, i32* %638, align 8
  %640 = ashr i32 %639, 16
  store i32 %640, i32* %28, align 4
  %641 = load i32, i32* %9, align 4
  %642 = load i32, i32* @ENV_QUIET, align 4
  %643 = icmp ult i32 %641, %642
  br i1 %643, label %644, label %650

644:                                              ; preds = %636
  %645 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %645, i32 0, i32 13
  %647 = load i32, i32* %646, align 8
  %648 = load i32, i32* %9, align 4
  %649 = call i32 @op_calc(i32 %647, i32 %648, i32 0)
  store i32 %649, i32* %8, align 4
  br label %650

650:                                              ; preds = %644, %636
  %651 = load i32, i32* %10, align 4
  %652 = load i32, i32* @ENV_QUIET, align 4
  %653 = icmp ult i32 %651, %652
  br i1 %653, label %654, label %663

654:                                              ; preds = %650
  %655 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 15
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* %10, align 4
  %659 = load i32, i32* %28, align 4
  %660 = call i32 @op_calc(i32 %657, i32 %658, i32 %659)
  %661 = load i32, i32* %8, align 4
  %662 = add nsw i32 %661, %660
  store i32 %662, i32* %8, align 4
  br label %663

663:                                              ; preds = %654, %650
  %664 = load i32, i32* %11, align 4
  %665 = load i32, i32* @ENV_QUIET, align 4
  %666 = icmp ult i32 %664, %665
  br i1 %666, label %667, label %675

667:                                              ; preds = %663
  %668 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %669 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %668, i32 0, i32 11
  %670 = load i32, i32* %669, align 8
  %671 = load i32, i32* %11, align 4
  %672 = call i32 @op_calc(i32 %670, i32 %671, i32 0)
  %673 = load i32, i32* %8, align 4
  %674 = add nsw i32 %673, %672
  store i32 %674, i32* %8, align 4
  br label %675

675:                                              ; preds = %667, %663
  br label %717

676:                                              ; preds = %358
  %677 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %678 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %677, i32 0, i32 7
  %679 = load i32, i32* %678, align 8
  %680 = ashr i32 %679, 16
  store i32 %680, i32* %8, align 4
  %681 = load i32, i32* %9, align 4
  %682 = load i32, i32* @ENV_QUIET, align 4
  %683 = icmp ult i32 %681, %682
  br i1 %683, label %684, label %692

684:                                              ; preds = %676
  %685 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %686 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %685, i32 0, i32 13
  %687 = load i32, i32* %686, align 8
  %688 = load i32, i32* %9, align 4
  %689 = call i32 @op_calc(i32 %687, i32 %688, i32 0)
  %690 = load i32, i32* %8, align 4
  %691 = add nsw i32 %690, %689
  store i32 %691, i32* %8, align 4
  br label %692

692:                                              ; preds = %684, %676
  %693 = load i32, i32* %10, align 4
  %694 = load i32, i32* @ENV_QUIET, align 4
  %695 = icmp ult i32 %693, %694
  br i1 %695, label %696, label %704

696:                                              ; preds = %692
  %697 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %698 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %697, i32 0, i32 15
  %699 = load i32, i32* %698, align 8
  %700 = load i32, i32* %10, align 4
  %701 = call i32 @op_calc(i32 %699, i32 %700, i32 0)
  %702 = load i32, i32* %8, align 4
  %703 = add nsw i32 %702, %701
  store i32 %703, i32* %8, align 4
  br label %704

704:                                              ; preds = %696, %692
  %705 = load i32, i32* %11, align 4
  %706 = load i32, i32* @ENV_QUIET, align 4
  %707 = icmp ult i32 %705, %706
  br i1 %707, label %708, label %716

708:                                              ; preds = %704
  %709 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %710 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %709, i32 0, i32 11
  %711 = load i32, i32* %710, align 8
  %712 = load i32, i32* %11, align 4
  %713 = call i32 @op_calc(i32 %711, i32 %712, i32 0)
  %714 = load i32, i32* %8, align 4
  %715 = add nsw i32 %714, %713
  store i32 %715, i32* %8, align 4
  br label %716

716:                                              ; preds = %708, %704
  br label %717

717:                                              ; preds = %358, %716, %675, %635, %588, %549, %502, %455, %409
  %718 = load i32, i32* %8, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %769

720:                                              ; preds = %717
  %721 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %722 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = and i32 %723, 1
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %758

726:                                              ; preds = %720
  %727 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %728 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = and i32 %729, 32
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %741

732:                                              ; preds = %726
  %733 = load i32, i32* %8, align 4
  %734 = load i32*, i32** %5, align 8
  %735 = load i32, i32* %7, align 4
  %736 = mul nsw i32 %735, 2
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i32, i32* %734, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = add nsw i32 %739, %733
  store i32 %740, i32* %738, align 4
  br label %741

741:                                              ; preds = %732, %726
  %742 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %743 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 8
  %745 = and i32 %744, 16
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %757

747:                                              ; preds = %741
  %748 = load i32, i32* %8, align 4
  %749 = load i32*, i32** %5, align 8
  %750 = load i32, i32* %7, align 4
  %751 = mul nsw i32 %750, 2
  %752 = add nsw i32 %751, 1
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %749, i64 %753
  %755 = load i32, i32* %754, align 4
  %756 = add nsw i32 %755, %748
  store i32 %756, i32* %754, align 4
  br label %757

757:                                              ; preds = %747, %741
  br label %766

758:                                              ; preds = %720
  %759 = load i32, i32* %8, align 4
  %760 = load i32*, i32** %5, align 8
  %761 = load i32, i32* %7, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, i32* %760, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = add nsw i32 %764, %759
  store i32 %765, i32* %763, align 4
  br label %766

766:                                              ; preds = %758, %757
  %767 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %768 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %767, i32 0, i32 9
  store i32 8, i32* %768, align 8
  br label %769

769:                                              ; preds = %766, %717
  %770 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %771 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %770, i32 0, i32 16
  %772 = load i64, i64* %771, align 8
  %773 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %774 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %773, i32 0, i32 17
  %775 = load i32, i32* %774, align 8
  %776 = sext i32 %775 to i64
  %777 = add nsw i64 %776, %772
  %778 = trunc i64 %777 to i32
  store i32 %778, i32* %774, align 8
  %779 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %780 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %779, i32 0, i32 14
  %781 = load i64, i64* %780, align 8
  %782 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %783 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %782, i32 0, i32 15
  %784 = load i32, i32* %783, align 8
  %785 = sext i32 %784 to i64
  %786 = add nsw i64 %785, %781
  %787 = trunc i64 %786 to i32
  store i32 %787, i32* %783, align 8
  %788 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %789 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %788, i32 0, i32 12
  %790 = load i64, i64* %789, align 8
  %791 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %792 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %791, i32 0, i32 13
  %793 = load i32, i32* %792, align 8
  %794 = sext i32 %793 to i64
  %795 = add nsw i64 %794, %790
  %796 = trunc i64 %795 to i32
  store i32 %796, i32* %792, align 8
  %797 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %798 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %797, i32 0, i32 10
  %799 = load i64, i64* %798, align 8
  %800 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %801 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %800, i32 0, i32 11
  %802 = load i32, i32* %801, align 8
  %803 = sext i32 %802 to i64
  %804 = add nsw i64 %803, %799
  %805 = trunc i64 %804 to i32
  store i32 %805, i32* %801, align 8
  br label %806

806:                                              ; preds = %769, %208
  %807 = load i32, i32* %7, align 4
  %808 = add nsw i32 %807, 1
  store i32 %808, i32* %7, align 4
  br label %29

809:                                              ; preds = %29
  ret void
}

declare dso_local i32 @advance_lfo(i32, i64, i64) #1

declare dso_local i8* @update_eg_phase(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @op_calc1(i32, i32, i32) #1

declare dso_local i32 @op_calc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
