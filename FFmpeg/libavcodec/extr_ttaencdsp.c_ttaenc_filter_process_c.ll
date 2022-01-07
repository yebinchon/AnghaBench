; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ttaencdsp.c_ttaenc_filter_process_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ttaencdsp.c_ttaenc_filter_process_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32)* @ttaenc_filter_process_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttaenc_filter_process_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %7
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %137

75:                                               ; preds = %7
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 7
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %79, %75
  br label %137

137:                                              ; preds = %136, %18
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %140, %143
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = add nsw i32 %144, %151
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %155, %158
  %160 = add nsw i32 %152, %159
  %161 = load i32*, i32** %10, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %163, %166
  %168 = add nsw i32 %160, %167
  %169 = load i32*, i32** %10, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %171, %174
  %176 = add nsw i32 %168, %175
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 5
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %179, %182
  %184 = add nsw i32 %176, %183
  %185 = load i32*, i32** %10, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 6
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %187, %190
  %192 = add nsw i32 %184, %191
  %193 = load i32*, i32** %10, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 7
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %195, %198
  %200 = add nsw i32 %192, %199
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %14, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %205, i32* %207, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 %210, i32* %212, align 4
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  store i32 %215, i32* %217, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  store i32 %220, i32* %222, align 4
  %223 = load i32*, i32** %10, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %225, i32* %227, align 4
  %228 = load i32*, i32** %10, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  store i32 %235, i32* %237, align 4
  %238 = load i32*, i32** %10, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 4
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %10, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  store i32 %240, i32* %242, align 4
  %243 = load i32*, i32** %10, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  %245 = load i32, i32* %244, align 4
  %246 = ashr i32 %245, 30
  %247 = or i32 %246, 1
  %248 = load i32*, i32** %9, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  store i32 %247, i32* %249, align 4
  %250 = load i32*, i32** %10, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 5
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 30
  %254 = or i32 %253, 2
  %255 = and i32 %254, -2
  %256 = load i32*, i32** %9, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 5
  store i32 %255, i32* %257, align 4
  %258 = load i32*, i32** %10, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 6
  %260 = load i32, i32* %259, align 4
  %261 = ashr i32 %260, 30
  %262 = or i32 %261, 2
  %263 = and i32 %262, -2
  %264 = load i32*, i32** %9, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 6
  store i32 %263, i32* %265, align 4
  %266 = load i32*, i32** %10, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 7
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 30
  %270 = or i32 %269, 4
  %271 = and i32 %270, -4
  %272 = load i32*, i32** %9, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 7
  store i32 %271, i32* %273, align 4
  %274 = load i32*, i32** %10, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 0, %276
  %278 = load i32*, i32** %10, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 4
  store i32 %277, i32* %279, align 4
  %280 = load i32*, i32** %10, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 6
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 0, %282
  %284 = load i32*, i32** %10, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 5
  store i32 %283, i32* %285, align 4
  %286 = load i32*, i32** %12, align 8
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %10, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 7
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %287, %290
  %292 = load i32*, i32** %10, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 6
  store i32 %291, i32* %293, align 4
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %10, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 7
  store i32 %295, i32* %297, align 4
  %298 = load i32*, i32** %10, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 6
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %10, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 5
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load i32*, i32** %10, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 5
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %10, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %307
  store i32 %311, i32* %309, align 4
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %13, align 4
  %314 = ashr i32 %312, %313
  %315 = load i32*, i32** %12, align 8
  %316 = load i32, i32* %315, align 4
  %317 = sub nsw i32 %316, %314
  store i32 %317, i32* %315, align 4
  %318 = load i32*, i32** %12, align 8
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %11, align 8
  store i32 %319, i32* %320, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
