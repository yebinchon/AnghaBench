; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_x2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_x2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @pix_abs16_x2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16_x2_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %282, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %285

17:                                               ; preds = %13
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @avg2(i64 %23, i64 %26)
  %28 = sub nsw i64 %20, %27
  %29 = call i64 @abs(i64 %28)
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @avg2(i64 %39, i64 %42)
  %44 = sub nsw i64 %36, %43
  %45 = call i64 @abs(i64 %44)
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i64*, i64** %7, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @avg2(i64 %55, i64 %58)
  %60 = sub nsw i64 %52, %59
  %61 = call i64 @abs(i64 %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @avg2(i64 %71, i64 %74)
  %76 = sub nsw i64 %68, %75
  %77 = call i64 @abs(i64 %76)
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i64*, i64** %7, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 5
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @avg2(i64 %87, i64 %90)
  %92 = sub nsw i64 %84, %91
  %93 = call i64 @abs(i64 %92)
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i64*, i64** %7, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 5
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 5
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 6
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @avg2(i64 %103, i64 %106)
  %108 = sub nsw i64 %100, %107
  %109 = call i64 @abs(i64 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = load i64*, i64** %7, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 6
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 6
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %8, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 7
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @avg2(i64 %119, i64 %122)
  %124 = sub nsw i64 %116, %123
  %125 = call i64 @abs(i64 %124)
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %11, align 4
  %130 = load i64*, i64** %7, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 7
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 7
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %8, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 8
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @avg2(i64 %135, i64 %138)
  %140 = sub nsw i64 %132, %139
  %141 = call i64 @abs(i64 %140)
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  %146 = load i64*, i64** %7, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %8, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %8, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 9
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @avg2(i64 %151, i64 %154)
  %156 = sub nsw i64 %148, %155
  %157 = call i64 @abs(i64 %156)
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %11, align 4
  %162 = load i64*, i64** %7, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 9
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %8, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 9
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %8, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 10
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @avg2(i64 %167, i64 %170)
  %172 = sub nsw i64 %164, %171
  %173 = call i64 @abs(i64 %172)
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %11, align 4
  %178 = load i64*, i64** %7, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 10
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %8, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 10
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %8, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 11
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @avg2(i64 %183, i64 %186)
  %188 = sub nsw i64 %180, %187
  %189 = call i64 @abs(i64 %188)
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %11, align 4
  %194 = load i64*, i64** %7, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 11
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %8, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 11
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %8, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 12
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @avg2(i64 %199, i64 %202)
  %204 = sub nsw i64 %196, %203
  %205 = call i64 @abs(i64 %204)
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %11, align 4
  %210 = load i64*, i64** %7, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 12
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %8, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 12
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %8, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 13
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @avg2(i64 %215, i64 %218)
  %220 = sub nsw i64 %212, %219
  %221 = call i64 @abs(i64 %220)
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %11, align 4
  %226 = load i64*, i64** %7, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 13
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %8, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 13
  %231 = load i64, i64* %230, align 8
  %232 = load i64*, i64** %8, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 14
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @avg2(i64 %231, i64 %234)
  %236 = sub nsw i64 %228, %235
  %237 = call i64 @abs(i64 %236)
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %237
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %11, align 4
  %242 = load i64*, i64** %7, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 14
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** %8, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 14
  %247 = load i64, i64* %246, align 8
  %248 = load i64*, i64** %8, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 15
  %250 = load i64, i64* %249, align 8
  %251 = call i64 @avg2(i64 %247, i64 %250)
  %252 = sub nsw i64 %244, %251
  %253 = call i64 @abs(i64 %252)
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %253
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %11, align 4
  %258 = load i64*, i64** %7, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 15
  %260 = load i64, i64* %259, align 8
  %261 = load i64*, i64** %8, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 15
  %263 = load i64, i64* %262, align 8
  %264 = load i64*, i64** %8, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 16
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @avg2(i64 %263, i64 %266)
  %268 = sub nsw i64 %260, %267
  %269 = call i64 @abs(i64 %268)
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %269
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i64*, i64** %7, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  store i64* %277, i64** %7, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i64*, i64** %8, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  store i64* %281, i64** %8, align 8
  br label %282

282:                                              ; preds = %17
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %13

285:                                              ; preds = %13
  %286 = load i32, i32* %11, align 4
  ret i32 %286
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @avg2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
