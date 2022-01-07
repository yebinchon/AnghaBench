; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale.c_xyz12Torgb48.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale.c_xyz12Torgb48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwsContext = type { i32*, i32**, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SwsContext*, i32*, i32*, i32, i32)* @xyz12Torgb48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz12Torgb48(%struct.SwsContext* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.SwsContext*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.SwsContext* %0, %struct.SwsContext** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %21 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %305, %5
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %308

28:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %293, %28
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 2
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %296

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @AV_RB16(i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @AV_RB16(i32* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = call i32 @AV_RB16(i32* %58)
  store i32 %59, i32* %16, align 4
  br label %79

60:                                               ; preds = %34
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @AV_RL16(i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @AV_RL16(i32* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call i32 @AV_RL16(i32* %77)
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %60, %41
  %80 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %81 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = ashr i32 %83, 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %89 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = ashr i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %15, align 4
  %96 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %97 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = ashr i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %16, align 4
  %104 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %105 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %114 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %112, %121
  %123 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %124 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %16, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %122, %131
  %133 = ashr i32 %132, 12
  store i32 %133, i32* %17, align 4
  %134 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %135 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %144 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %15, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %142, %151
  %153 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %154 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 %159, %160
  %162 = add nsw i32 %152, %161
  %163 = ashr i32 %162, 12
  store i32 %163, i32* %18, align 4
  %164 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %165 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %164, i32 0, i32 1
  %166 = load i32**, i32*** %165, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %14, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %174 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %15, align 4
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %172, %181
  %183 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %184 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %183, i32 0, i32 1
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %16, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %182, %191
  %193 = ashr i32 %192, 12
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %17, align 4
  %195 = call i32 @av_clip_uintp2(i32 %194, i32 12)
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @av_clip_uintp2(i32 %196, i32 12)
  store i32 %197, i32* %18, align 4
  %198 = load i32, i32* %19, align 4
  %199 = call i32 @av_clip_uintp2(i32 %198, i32 12)
  store i32 %199, i32* %19, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %249

206:                                              ; preds = %79
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %213 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 4
  %220 = call i32 @AV_WB16(i32* %211, i32 %219)
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %227 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 4
  %234 = call i32 @AV_WB16(i32* %225, i32 %233)
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %241 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 4
  %248 = call i32 @AV_WB16(i32* %239, i32 %247)
  br label %292

249:                                              ; preds = %79
  %250 = load i32*, i32** %7, align 8
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %256 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 4
  %263 = call i32 @AV_WL16(i32* %254, i32 %262)
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %270 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = shl i32 %275, 4
  %277 = call i32 @AV_WL16(i32* %268, i32 %276)
  %278 = load i32*, i32** %7, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load %struct.SwsContext*, %struct.SwsContext** %6, align 8
  %284 = getelementptr inbounds %struct.SwsContext, %struct.SwsContext* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %19, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = shl i32 %289, 4
  %291 = call i32 @AV_WL16(i32* %282, i32 %290)
  br label %292

292:                                              ; preds = %249, %206
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 3
  store i32 %295, i32* %11, align 4
  br label %29

296:                                              ; preds = %29
  %297 = load i32, i32* %9, align 4
  %298 = load i32*, i32** %8, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %8, align 8
  %301 = load i32, i32* %9, align 4
  %302 = load i32*, i32** %7, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  store i32* %304, i32** %7, align 8
  br label %305

305:                                              ; preds = %296
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %24

308:                                              ; preds = %24
  ret void
}

declare dso_local %struct.TYPE_3__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
