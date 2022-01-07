; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_obj_tms.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_render.c_render_obj_tms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@reg = common dso_local global i32* null, align 8
@spr_ovr = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@object_count = common dso_local global i32 0, align 4
@object_info = common dso_local global %struct.TYPE_6__* null, align 8
@linebuf = common dso_local global i32** null, align 8
@vram = common dso_local global i32* null, align 8
@lut = common dso_local global i32** null, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_GG = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@v_counter = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_obj_tms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 8, i32* %12, align 4
  %14 = load i32*, i32** @reg, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 2
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* %12, align 4
  %20 = shl i32 %19, %18
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** @reg, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @spr_ovr, align 4
  %28 = load i32, i32* @status, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @status, align 4
  store i32 0, i32* @spr_ovr, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %261, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @object_count, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %264

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @object_info, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @object_info, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 128
  %49 = ashr i32 %48, 2
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32**, i32*** @linebuf, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 32, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp sgt i32 %61, 256
  br i1 %62, label %63, label %66

63:                                               ; preds = %34
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 256, %64
  store i32 %65, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %75

66:                                               ; preds = %34
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 15
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @object_info, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32*, i32** @reg, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 2
  %88 = ashr i32 %87, 0
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32*, i32** @reg, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 2
  %96 = ashr i32 %95, 1
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** @vram, align 8
  %101 = load i32*, i32** @reg, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 11
  %105 = and i32 %104, 14336
  %106 = load i32, i32* %11, align 4
  %107 = shl i32 %106, 3
  %108 = or i32 %105, %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @object_info, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %108, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %100, i64 %116
  store i32* %117, i32** %8, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 16
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** @reg, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %210

131:                                              ; preds = %75
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %206, %131
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %209

137:                                              ; preds = %133
  %138 = load i32, i32* %3, align 4
  %139 = ashr i32 %138, 4
  %140 = and i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %3, align 4
  %146 = ashr i32 %145, 1
  %147 = and i32 %146, 7
  %148 = sub nsw i32 7, %147
  %149 = ashr i32 %144, %148
  %150 = and i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %11, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 8
  %160 = load i32, i32* %11, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %11, align 4
  %162 = load i32**, i32*** @lut, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 5
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* %11, align 4
  %174 = and i32 %173, 32768
  %175 = ashr i32 %174, 10
  %176 = load i32, i32* @status, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* @status, align 4
  %178 = load i32, i32* %11, align 4
  %179 = and i32 %178, 255
  store i32 %179, i32* %11, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 8
  %187 = load i32, i32* %11, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %11, align 4
  %189 = load i32**, i32*** @lut, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 5
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load i32, i32* %11, align 4
  %202 = and i32 %201, 32768
  %203 = ashr i32 %202, 10
  %204 = load i32, i32* @status, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* @status, align 4
  br label %206

206:                                              ; preds = %137
  %207 = load i32, i32* %3, align 4
  %208 = add nsw i32 %207, 2
  store i32 %208, i32* %3, align 4
  br label %133

209:                                              ; preds = %133
  br label %260

210:                                              ; preds = %75
  %211 = load i32, i32* %5, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %256, %210
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %259

216:                                              ; preds = %212
  %217 = load i32, i32* %3, align 4
  %218 = ashr i32 %217, 3
  %219 = and i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %3, align 4
  %225 = and i32 %224, 7
  %226 = sub nsw i32 7, %225
  %227 = ashr i32 %223, %226
  %228 = and i32 %227, 1
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %9, align 4
  %231 = mul nsw i32 %229, %230
  store i32 %231, i32* %11, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 8
  %238 = load i32, i32* %11, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %11, align 4
  %240 = load i32**, i32*** @lut, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 5
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %246, i32* %250, align 4
  %251 = load i32, i32* %11, align 4
  %252 = and i32 %251, 32768
  %253 = ashr i32 %252, 10
  %254 = load i32, i32* @status, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* @status, align 4
  br label %256

256:                                              ; preds = %216
  %257 = load i32, i32* %3, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %3, align 4
  br label %212

259:                                              ; preds = %212
  br label %260

260:                                              ; preds = %259, %209
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %30

264:                                              ; preds = %30
  %265 = load i64, i64* @system_hw, align 8
  %266 = load i64, i64* @SYSTEM_GG, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %309

268:                                              ; preds = %264
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %309, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* @v_counter, align 4
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 8
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %309

275:                                              ; preds = %271
  %276 = load i32, i32* @v_counter, align 4
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 8
  %278 = sub nsw i32 %277, 144
  %279 = sdiv i32 %278, 2
  %280 = sub nsw i32 %276, %279
  store i32 %280, i32* %13, align 4
  %281 = load i32, i32* %13, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %275
  %284 = load i32, i32* %13, align 4
  %285 = icmp sge i32 %284, 144
  br i1 %285, label %286, label %293

286:                                              ; preds = %283, %275
  %287 = load i32**, i32*** @linebuf, align 8
  %288 = getelementptr inbounds i32*, i32** %287, i64 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 32
  %291 = load i32, i32* %2, align 4
  %292 = call i32 @memset(i32* %290, i32 64, i32 %291)
  br label %308

293:                                              ; preds = %283
  %294 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 1), align 8
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %293
  %297 = load i32**, i32*** @linebuf, align 8
  %298 = getelementptr inbounds i32*, i32** %297, i64 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 32
  %301 = call i32 @memset(i32* %300, i32 64, i32 48)
  %302 = load i32**, i32*** @linebuf, align 8
  %303 = getelementptr inbounds i32*, i32** %302, i64 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 240
  %306 = call i32 @memset(i32* %305, i32 64, i32 48)
  br label %307

307:                                              ; preds = %296, %293
  br label %308

308:                                              ; preds = %307, %286
  br label %309

309:                                              ; preds = %308, %271, %268, %264
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
