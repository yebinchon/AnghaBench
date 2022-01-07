; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_y2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_y2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @pix_abs16_y2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16_y2_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64* %17, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %291, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %294

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @avg2(i64 %28, i64 %31)
  %33 = sub nsw i64 %25, %32
  %34 = call i64 @abs(i64 %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %13, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @avg2(i64 %44, i64 %47)
  %49 = sub nsw i64 %41, %48
  %50 = call i64 @abs(i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %13, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @avg2(i64 %60, i64 %63)
  %65 = sub nsw i64 %57, %64
  %66 = call i64 @abs(i64 %65)
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i64*, i64** %7, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %13, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @avg2(i64 %76, i64 %79)
  %81 = sub nsw i64 %73, %80
  %82 = call i64 @abs(i64 %81)
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = load i64*, i64** %7, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %13, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 4
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @avg2(i64 %92, i64 %95)
  %97 = sub nsw i64 %89, %96
  %98 = call i64 @abs(i64 %97)
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load i64*, i64** %7, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 5
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %13, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 5
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @avg2(i64 %108, i64 %111)
  %113 = sub nsw i64 %105, %112
  %114 = call i64 @abs(i64 %113)
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  %119 = load i64*, i64** %7, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 6
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 6
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 6
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @avg2(i64 %124, i64 %127)
  %129 = sub nsw i64 %121, %128
  %130 = call i64 @abs(i64 %129)
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load i64*, i64** %7, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 7
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %8, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 7
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %13, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 7
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @avg2(i64 %140, i64 %143)
  %145 = sub nsw i64 %137, %144
  %146 = call i64 @abs(i64 %145)
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load i64*, i64** %7, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 8
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %8, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %13, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 8
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @avg2(i64 %156, i64 %159)
  %161 = sub nsw i64 %153, %160
  %162 = call i64 @abs(i64 %161)
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %11, align 4
  %167 = load i64*, i64** %7, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 9
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %8, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 9
  %172 = load i64, i64* %171, align 8
  %173 = load i64*, i64** %13, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 9
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @avg2(i64 %172, i64 %175)
  %177 = sub nsw i64 %169, %176
  %178 = call i64 @abs(i64 %177)
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %11, align 4
  %183 = load i64*, i64** %7, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 10
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %8, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 10
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %13, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 10
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @avg2(i64 %188, i64 %191)
  %193 = sub nsw i64 %185, %192
  %194 = call i64 @abs(i64 %193)
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %11, align 4
  %199 = load i64*, i64** %7, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 11
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %8, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 11
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %13, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 11
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @avg2(i64 %204, i64 %207)
  %209 = sub nsw i64 %201, %208
  %210 = call i64 @abs(i64 %209)
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %11, align 4
  %215 = load i64*, i64** %7, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 12
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %8, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 12
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %13, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 12
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @avg2(i64 %220, i64 %223)
  %225 = sub nsw i64 %217, %224
  %226 = call i64 @abs(i64 %225)
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %11, align 4
  %231 = load i64*, i64** %7, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 13
  %233 = load i64, i64* %232, align 8
  %234 = load i64*, i64** %8, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 13
  %236 = load i64, i64* %235, align 8
  %237 = load i64*, i64** %13, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 13
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @avg2(i64 %236, i64 %239)
  %241 = sub nsw i64 %233, %240
  %242 = call i64 @abs(i64 %241)
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %11, align 4
  %247 = load i64*, i64** %7, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 14
  %249 = load i64, i64* %248, align 8
  %250 = load i64*, i64** %8, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 14
  %252 = load i64, i64* %251, align 8
  %253 = load i64*, i64** %13, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 14
  %255 = load i64, i64* %254, align 8
  %256 = call i64 @avg2(i64 %252, i64 %255)
  %257 = sub nsw i64 %249, %256
  %258 = call i64 @abs(i64 %257)
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %258
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %11, align 4
  %263 = load i64*, i64** %7, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 15
  %265 = load i64, i64* %264, align 8
  %266 = load i64*, i64** %8, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 15
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** %13, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 15
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @avg2(i64 %268, i64 %271)
  %273 = sub nsw i64 %265, %272
  %274 = call i64 @abs(i64 %273)
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i64*, i64** %7, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i64, i64* %280, i64 %281
  store i64* %282, i64** %7, align 8
  %283 = load i32, i32* %9, align 4
  %284 = load i64*, i64** %8, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  store i64* %286, i64** %8, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i64*, i64** %13, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i64, i64* %288, i64 %289
  store i64* %290, i64** %13, align 8
  br label %291

291:                                              ; preds = %22
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %12, align 4
  br label %18

294:                                              ; preds = %18
  %295 = load i32, i32* %11, align 4
  ret i32 %295
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @avg2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
