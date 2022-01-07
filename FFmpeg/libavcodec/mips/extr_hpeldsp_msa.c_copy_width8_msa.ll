; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_copy_width8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_copy_width8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @copy_width8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_width8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
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
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %28, 12
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %140

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %32, 12
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %38, %31
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %139

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %20, align 8
  %42 = load i64, i64* %21, align 8
  %43 = load i64, i64* %22, align 8
  %44 = load i64, i64* %23, align 8
  %45 = load i64, i64* %24, align 8
  %46 = load i64, i64* %25, align 8
  %47 = load i64, i64* %26, align 8
  %48 = load i64, i64* %27, align 8
  %49 = call i32 @LD_UB8(i32* %39, i32 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48)
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 8, %50
  %52 = load i32*, i32** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load i64, i64* %20, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @__msa_copy_u_d(i32 %56, i32 0)
  store i32 %57, i32* %12, align 4
  %58 = load i64, i64* %21, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @__msa_copy_u_d(i32 %59, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i64, i64* %22, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @__msa_copy_u_d(i32 %62, i32 0)
  store i32 %63, i32* %14, align 4
  %64 = load i64, i64* %23, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @__msa_copy_u_d(i32 %65, i32 0)
  store i32 %66, i32* %15, align 4
  %67 = load i64, i64* %24, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @__msa_copy_u_d(i32 %68, i32 0)
  store i32 %69, i32* %16, align 4
  %70 = load i64, i64* %25, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @__msa_copy_u_d(i32 %71, i32 0)
  store i32 %72, i32* %17, align 4
  %73 = load i64, i64* %26, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @__msa_copy_u_d(i32 %74, i32 0)
  store i32 %75, i32* %18, align 4
  %76 = load i64, i64* %27, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @__msa_copy_u_d(i32 %77, i32 0)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @SD4(i32 %79, i32 %80, i32 %81, i32 %82, i32* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 4, %86
  %88 = load i32*, i32** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @SD4(i32 %91, i32 %92, i32 %93, i32 %94, i32* %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 4, %98
  %100 = load i32*, i32** %8, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* %23, align 8
  %109 = call i32 @LD_UB4(i32* %103, i32 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 4, %110
  %112 = load i32*, i32** %6, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %6, align 8
  %115 = load i64, i64* %20, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @__msa_copy_u_d(i32 %116, i32 0)
  store i32 %117, i32* %12, align 4
  %118 = load i64, i64* %21, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @__msa_copy_u_d(i32 %119, i32 0)
  store i32 %120, i32* %13, align 4
  %121 = load i64, i64* %22, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @__msa_copy_u_d(i32 %122, i32 0)
  store i32 %123, i32* %14, align 4
  %124 = load i64, i64* %23, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @__msa_copy_u_d(i32 %125, i32 0)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @SD4(i32 %127, i32 %128, i32 %129, i32 %130, i32* %131, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = mul nsw i32 4, %134
  %136 = load i32*, i32** %8, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %8, align 8
  br label %34

139:                                              ; preds = %34
  br label %312

140:                                              ; preds = %5
  %141 = load i32, i32* %10, align 4
  %142 = srem i32 %141, 8
  %143 = icmp eq i32 0, %142
  br i1 %143, label %144, label %217

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = ashr i32 %145, 3
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %151, %144
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %11, align 4
  %150 = icmp ne i32 %148, 0
  br i1 %150, label %151, label %216

151:                                              ; preds = %147
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* %21, align 8
  %156 = load i64, i64* %22, align 8
  %157 = load i64, i64* %23, align 8
  %158 = load i64, i64* %24, align 8
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %26, align 8
  %161 = load i64, i64* %27, align 8
  %162 = call i32 @LD_UB8(i32* %152, i32 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i32, i32* %7, align 4
  %164 = mul nsw i32 8, %163
  %165 = load i32*, i32** %6, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %6, align 8
  %168 = load i64, i64* %20, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @__msa_copy_u_d(i32 %169, i32 0)
  store i32 %170, i32* %12, align 4
  %171 = load i64, i64* %21, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @__msa_copy_u_d(i32 %172, i32 0)
  store i32 %173, i32* %13, align 4
  %174 = load i64, i64* %22, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @__msa_copy_u_d(i32 %175, i32 0)
  store i32 %176, i32* %14, align 4
  %177 = load i64, i64* %23, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @__msa_copy_u_d(i32 %178, i32 0)
  store i32 %179, i32* %15, align 4
  %180 = load i64, i64* %24, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @__msa_copy_u_d(i32 %181, i32 0)
  store i32 %182, i32* %16, align 4
  %183 = load i64, i64* %25, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @__msa_copy_u_d(i32 %184, i32 0)
  store i32 %185, i32* %17, align 4
  %186 = load i64, i64* %26, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @__msa_copy_u_d(i32 %187, i32 0)
  store i32 %188, i32* %18, align 4
  %189 = load i64, i64* %27, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @__msa_copy_u_d(i32 %190, i32 0)
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @SD4(i32 %192, i32 %193, i32 %194, i32 %195, i32* %196, i32 %197)
  %199 = load i32, i32* %9, align 4
  %200 = mul nsw i32 4, %199
  %201 = load i32*, i32** %8, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %8, align 8
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @SD4(i32 %204, i32 %205, i32 %206, i32 %207, i32* %208, i32 %209)
  %211 = load i32, i32* %9, align 4
  %212 = mul nsw i32 4, %211
  %213 = load i32*, i32** %8, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32* %215, i32** %8, align 8
  br label %147

216:                                              ; preds = %147
  br label %311

217:                                              ; preds = %140
  %218 = load i32, i32* %10, align 4
  %219 = srem i32 %218, 4
  %220 = icmp eq i32 0, %219
  br i1 %220, label %221, label %266

221:                                              ; preds = %217
  %222 = load i32, i32* %10, align 4
  %223 = sdiv i32 %222, 4
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %228, %221
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %11, align 4
  %227 = icmp ne i32 %225, 0
  br i1 %227, label %228, label %265

228:                                              ; preds = %224
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %7, align 4
  %231 = load i64, i64* %20, align 8
  %232 = load i64, i64* %21, align 8
  %233 = load i64, i64* %22, align 8
  %234 = load i64, i64* %23, align 8
  %235 = call i32 @LD_UB4(i32* %229, i32 %230, i64 %231, i64 %232, i64 %233, i64 %234)
  %236 = load i32, i32* %7, align 4
  %237 = mul nsw i32 4, %236
  %238 = load i32*, i32** %6, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  store i32* %240, i32** %6, align 8
  %241 = load i64, i64* %20, align 8
  %242 = trunc i64 %241 to i32
  %243 = call i32 @__msa_copy_u_d(i32 %242, i32 0)
  store i32 %243, i32* %12, align 4
  %244 = load i64, i64* %21, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @__msa_copy_u_d(i32 %245, i32 0)
  store i32 %246, i32* %13, align 4
  %247 = load i64, i64* %22, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @__msa_copy_u_d(i32 %248, i32 0)
  store i32 %249, i32* %14, align 4
  %250 = load i64, i64* %23, align 8
  %251 = trunc i64 %250 to i32
  %252 = call i32 @__msa_copy_u_d(i32 %251, i32 0)
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %15, align 4
  %257 = load i32*, i32** %8, align 8
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @SD4(i32 %253, i32 %254, i32 %255, i32 %256, i32* %257, i32 %258)
  %260 = load i32, i32* %9, align 4
  %261 = mul nsw i32 4, %260
  %262 = load i32*, i32** %8, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %8, align 8
  br label %224

265:                                              ; preds = %224
  br label %310

266:                                              ; preds = %217
  %267 = load i32, i32* %10, align 4
  %268 = srem i32 %267, 2
  %269 = icmp eq i32 0, %268
  br i1 %269, label %270, label %309

270:                                              ; preds = %266
  %271 = load i32, i32* %10, align 4
  %272 = sdiv i32 %271, 2
  store i32 %272, i32* %11, align 4
  br label %273

273:                                              ; preds = %277, %270
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %11, align 4
  %276 = icmp ne i32 %274, 0
  br i1 %276, label %277, label %308

277:                                              ; preds = %273
  %278 = load i32*, i32** %6, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i64, i64* %20, align 8
  %281 = load i64, i64* %21, align 8
  %282 = call i32 @LD_UB2(i32* %278, i32 %279, i64 %280, i64 %281)
  %283 = load i32, i32* %7, align 4
  %284 = mul nsw i32 2, %283
  %285 = load i32*, i32** %6, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %6, align 8
  %288 = load i64, i64* %20, align 8
  %289 = trunc i64 %288 to i32
  %290 = call i32 @__msa_copy_u_d(i32 %289, i32 0)
  store i32 %290, i32* %12, align 4
  %291 = load i64, i64* %21, align 8
  %292 = trunc i64 %291 to i32
  %293 = call i32 @__msa_copy_u_d(i32 %292, i32 0)
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %12, align 4
  %295 = load i32*, i32** %8, align 8
  %296 = call i32 @SD(i32 %294, i32* %295)
  %297 = load i32, i32* %9, align 4
  %298 = load i32*, i32** %8, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %8, align 8
  %301 = load i32, i32* %13, align 4
  %302 = load i32*, i32** %8, align 8
  %303 = call i32 @SD(i32 %301, i32* %302)
  %304 = load i32, i32* %9, align 4
  %305 = load i32*, i32** %8, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %8, align 8
  br label %273

308:                                              ; preds = %273
  br label %309

309:                                              ; preds = %308, %266
  br label %310

310:                                              ; preds = %309, %265
  br label %311

311:                                              ; preds = %310, %216
  br label %312

312:                                              ; preds = %311, %139
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @SD(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
