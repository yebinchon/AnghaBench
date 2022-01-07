; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4video.c_ff_mpeg4_set_one_direct_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4video.c_ff_mpeg4_set_one_direct_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i32***, i32**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*** }

@tab_bias = common dso_local global i32 0, align 4
@tab_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @ff_mpeg4_set_one_direct_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_mpeg4_set_one_direct_mv(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32***, i32**** %29, align 8
  %31 = getelementptr inbounds i32**, i32*** %30, i64 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @tab_bias, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @tab_size, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %108

44:                                               ; preds = %4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @tab_bias, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32***, i32**** %59, align 8
  %61 = getelementptr inbounds i32**, i32*** %60, i64 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %57, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %44
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32***, i32**** %72, align 8
  %74 = getelementptr inbounds i32**, i32*** %73, i64 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %81, %82
  br label %96

84:                                               ; preds = %44
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @tab_bias, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %84, %70
  %97 = phi i32 [ %83, %70 ], [ %95, %84 ]
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32***, i32**** %99, align 8
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %97, i32* %107, align 4
  br label %162

108:                                              ; preds = %4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i32***, i32**** %117, align 8
  %119 = getelementptr inbounds i32**, i32*** %118, i64 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %115, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %108
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32***, i32**** %130, align 8
  %132 = getelementptr inbounds i32**, i32*** %131, i64 0
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  br label %150

142:                                              ; preds = %108
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %144, %145
  %147 = mul nsw i32 %143, %146
  %148 = load i32, i32* %10, align 4
  %149 = sdiv i32 %147, %148
  br label %150

150:                                              ; preds = %142, %128
  %151 = phi i32 [ %141, %128 ], [ %149, %142 ]
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i32***, i32**** %153, align 8
  %155 = getelementptr inbounds i32**, i32*** %154, i64 1
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %151, i32* %161, align 4
  br label %162

162:                                              ; preds = %150, %96
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32***, i32**** %165, align 8
  %167 = getelementptr inbounds i32**, i32*** %166, i64 0
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @tab_bias, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* @tab_size, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %244

180:                                              ; preds = %162
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @tab_bias, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = load i32***, i32**** %195, align 8
  %197 = getelementptr inbounds i32**, i32*** %196, i64 0
  %198 = load i32**, i32*** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 %193, i32* %203, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %180
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32***, i32**** %208, align 8
  %210 = getelementptr inbounds i32**, i32*** %209, i64 0
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %217, %218
  br label %232

220:                                              ; preds = %180
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 4
  %223 = load i32**, i32*** %222, align 8
  %224 = getelementptr inbounds i32*, i32** %223, i64 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @tab_bias, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %225, i64 %229
  %231 = load i32, i32* %230, align 4
  br label %232

232:                                              ; preds = %220, %206
  %233 = phi i32 [ %219, %206 ], [ %231, %220 ]
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 3
  %236 = load i32***, i32**** %235, align 8
  %237 = getelementptr inbounds i32**, i32*** %236, i64 1
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  store i32 %233, i32* %243, align 4
  br label %298

244:                                              ; preds = %162
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %11, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, i32* %10, align 4
  %249 = sdiv i32 %247, %248
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %249, %250
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  %254 = load i32***, i32**** %253, align 8
  %255 = getelementptr inbounds i32**, i32*** %254, i64 0
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  store i32 %251, i32* %261, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %244
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 3
  %267 = load i32***, i32**** %266, align 8
  %268 = getelementptr inbounds i32**, i32*** %267, i64 0
  %269 = load i32**, i32*** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %13, align 4
  %277 = sub nsw i32 %275, %276
  br label %286

278:                                              ; preds = %244
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %10, align 4
  %282 = sub nsw i32 %280, %281
  %283 = mul nsw i32 %279, %282
  %284 = load i32, i32* %10, align 4
  %285 = sdiv i32 %283, %284
  br label %286

286:                                              ; preds = %278, %264
  %287 = phi i32 [ %277, %264 ], [ %285, %278 ]
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 3
  %290 = load i32***, i32**** %289, align 8
  %291 = getelementptr inbounds i32**, i32*** %290, i64 1
  %292 = load i32**, i32*** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  store i32 %287, i32* %297, align 4
  br label %298

298:                                              ; preds = %286, %232
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
