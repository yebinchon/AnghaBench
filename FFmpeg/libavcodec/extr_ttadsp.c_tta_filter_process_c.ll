; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ttadsp.c_tta_filter_process_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ttadsp.c_tta_filter_process_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i64*, i64, i64)* @tta_filter_process_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tta_filter_process_c(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i64*, i64** %11, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %7
  %19 = load i64*, i64** %9, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 5
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 6
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 6
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 7
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 7
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  br label %137

75:                                               ; preds = %7
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %75
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %8, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 4
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 5
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 5
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 6
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 6
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load i64*, i64** %9, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 7
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %8, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 7
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %79, %75
  br label %137

137:                                              ; preds = %136, %18
  %138 = load i64*, i64** %10, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %8, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = mul nsw i64 %140, %143
  %145 = load i64*, i64** %10, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %8, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = mul nsw i64 %147, %150
  %152 = add nsw i64 %144, %151
  %153 = load i64*, i64** %10, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %8, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  %158 = load i64, i64* %157, align 8
  %159 = mul nsw i64 %155, %158
  %160 = add nsw i64 %152, %159
  %161 = load i64*, i64** %10, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %8, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 3
  %166 = load i64, i64* %165, align 8
  %167 = mul nsw i64 %163, %166
  %168 = add nsw i64 %160, %167
  %169 = load i64*, i64** %10, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 4
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %8, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 4
  %174 = load i64, i64* %173, align 8
  %175 = mul nsw i64 %171, %174
  %176 = add nsw i64 %168, %175
  %177 = load i64*, i64** %10, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 5
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %8, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 5
  %182 = load i64, i64* %181, align 8
  %183 = mul nsw i64 %179, %182
  %184 = add nsw i64 %176, %183
  %185 = load i64*, i64** %10, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 6
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %8, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 6
  %190 = load i64, i64* %189, align 8
  %191 = mul nsw i64 %187, %190
  %192 = add nsw i64 %184, %191
  %193 = load i64*, i64** %10, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 7
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** %8, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 7
  %198 = load i64, i64* %197, align 8
  %199 = mul nsw i64 %195, %198
  %200 = add nsw i64 %192, %199
  %201 = load i64, i64* %14, align 8
  %202 = add nsw i64 %201, %200
  store i64 %202, i64* %14, align 8
  %203 = load i64*, i64** %9, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64*, i64** %9, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 0
  store i64 %205, i64* %207, align 8
  %208 = load i64*, i64** %9, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %9, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 1
  store i64 %210, i64* %212, align 8
  %213 = load i64*, i64** %9, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %9, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 2
  store i64 %215, i64* %217, align 8
  %218 = load i64*, i64** %9, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %9, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 3
  store i64 %220, i64* %222, align 8
  %223 = load i64*, i64** %10, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64*, i64** %10, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 0
  store i64 %225, i64* %227, align 8
  %228 = load i64*, i64** %10, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %10, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  store i64 %230, i64* %232, align 8
  %233 = load i64*, i64** %10, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 3
  %235 = load i64, i64* %234, align 8
  %236 = load i64*, i64** %10, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 2
  store i64 %235, i64* %237, align 8
  %238 = load i64*, i64** %10, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 4
  %240 = load i64, i64* %239, align 8
  %241 = load i64*, i64** %10, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 3
  store i64 %240, i64* %242, align 8
  %243 = load i64*, i64** %10, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 4
  %245 = load i64, i64* %244, align 8
  %246 = ashr i64 %245, 30
  %247 = or i64 %246, 1
  %248 = load i64*, i64** %9, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 4
  store i64 %247, i64* %249, align 8
  %250 = load i64*, i64** %10, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 5
  %252 = load i64, i64* %251, align 8
  %253 = ashr i64 %252, 30
  %254 = or i64 %253, 2
  %255 = and i64 %254, -2
  %256 = load i64*, i64** %9, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 5
  store i64 %255, i64* %257, align 8
  %258 = load i64*, i64** %10, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 6
  %260 = load i64, i64* %259, align 8
  %261 = ashr i64 %260, 30
  %262 = or i64 %261, 2
  %263 = and i64 %262, -2
  %264 = load i64*, i64** %9, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 6
  store i64 %263, i64* %265, align 8
  %266 = load i64*, i64** %10, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 7
  %268 = load i64, i64* %267, align 8
  %269 = ashr i64 %268, 30
  %270 = or i64 %269, 4
  %271 = and i64 %270, -4
  %272 = load i64*, i64** %9, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 7
  store i64 %271, i64* %273, align 8
  %274 = load i64*, i64** %12, align 8
  %275 = load i64, i64* %274, align 8
  %276 = load i64*, i64** %11, align 8
  store i64 %275, i64* %276, align 8
  %277 = load i64, i64* %14, align 8
  %278 = load i64, i64* %13, align 8
  %279 = ashr i64 %277, %278
  %280 = load i64*, i64** %12, align 8
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, %279
  store i64 %282, i64* %280, align 8
  %283 = load i64*, i64** %10, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 5
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 0, %285
  %287 = load i64*, i64** %10, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 4
  store i64 %286, i64* %288, align 8
  %289 = load i64*, i64** %10, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 6
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 0, %291
  %293 = load i64*, i64** %10, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 5
  store i64 %292, i64* %294, align 8
  %295 = load i64*, i64** %12, align 8
  %296 = load i64, i64* %295, align 8
  %297 = load i64*, i64** %10, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 7
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %296, %299
  %301 = load i64*, i64** %10, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 6
  store i64 %300, i64* %302, align 8
  %303 = load i64*, i64** %12, align 8
  %304 = load i64, i64* %303, align 8
  %305 = load i64*, i64** %10, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 7
  store i64 %304, i64* %306, align 8
  %307 = load i64*, i64** %10, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 6
  %309 = load i64, i64* %308, align 8
  %310 = load i64*, i64** %10, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 5
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, %309
  store i64 %313, i64* %311, align 8
  %314 = load i64*, i64** %10, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 5
  %316 = load i64, i64* %315, align 8
  %317 = load i64*, i64** %10, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 4
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, %316
  store i64 %320, i64* %318, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
