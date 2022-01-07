; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/hash/extr_rhash.c_sha256_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/hash/extr_rhash.c_sha256_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { i32*, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@T_K = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha256_ctx*)* @sha256_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha256_block(%struct.sha256_ctx* %0) #0 {
  %2 = alloca %struct.sha256_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  store %struct.sha256_ctx* %0, %struct.sha256_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %36, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @load32be(i64 %28)
  %30 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %18

39:                                               ; preds = %18
  store i32 16, i32* %3, align 4
  br label %40

40:                                               ; preds = %129, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp ult i32 %41, 64
  br i1 %42, label %43, label %132

43:                                               ; preds = %40
  %44 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sub i32 %47, 15
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ROR32(i32 %51, i32 7)
  %53 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sub i32 %56, 15
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ROR32(i32 %60, i32 18)
  %62 = xor i32 %52, %61
  %63 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sub i32 %66, 15
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LSR32(i32 %70, i32 3)
  %72 = xor i32 %62, %71
  store i32 %72, i32* %4, align 4
  %73 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sub i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ROR32(i32 %80, i32 17)
  %82 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sub i32 %85, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ROR32(i32 %89, i32 19)
  %91 = xor i32 %81, %90
  %92 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sub i32 %95, 2
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @LSR32(i32 %99, i32 10)
  %101 = xor i32 %91, %100
  store i32 %101, i32* %5, align 4
  %102 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sub i32 %105, 16
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %113 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sub i32 %115, 7
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %111, %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %120, %121
  %123 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %124 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %43
  %130 = load i32, i32* %3, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %40

132:                                              ; preds = %40
  %133 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %134 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %6, align 4
  %138 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %139 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %7, align 4
  %143 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %144 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  %148 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %149 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %9, align 4
  %153 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %154 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %10, align 4
  %158 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %159 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  %163 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %164 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %12, align 4
  %168 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %169 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %246, %132
  %174 = load i32, i32* %3, align 4
  %175 = icmp ult i32 %174, 64
  br i1 %175, label %176, label %249

176:                                              ; preds = %173
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @ROR32(i32 %177, i32 2)
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @ROR32(i32 %179, i32 13)
  %181 = xor i32 %178, %180
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @ROR32(i32 %182, i32 22)
  %184 = xor i32 %181, %183
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %188, %189
  %191 = xor i32 %187, %190
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %8, align 4
  %194 = and i32 %192, %193
  %195 = xor i32 %191, %194
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @ROR32(i32 %199, i32 6)
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @ROR32(i32 %201, i32 11)
  %203 = xor i32 %200, %202
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @ROR32(i32 %204, i32 25)
  %206 = xor i32 %203, %205
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* %10, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %12, align 4
  %213 = and i32 %211, %212
  %214 = xor i32 %209, %213
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32*, i32** @T_K, align 8
  %221 = load i32, i32* %3, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %219, %224
  %226 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %227 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %225, %232
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %11, align 4
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %10, align 4
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %243, %244
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %176
  %247 = load i32, i32* %3, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %3, align 4
  br label %173

249:                                              ; preds = %173
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %252 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, %250
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %259 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, %257
  store i32 %263, i32* %261, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %266 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, %264
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %273 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 3
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, %271
  store i32 %277, i32* %275, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %280 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %278
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* %11, align 4
  %286 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %287 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 5
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, %285
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %294 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 6
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, %292
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %301 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 7
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, %299
  store i32 %305, i32* %303, align 4
  %306 = load %struct.sha256_ctx*, %struct.sha256_ctx** %2, align 8
  %307 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %306, i32 0, i32 2
  store i64 0, i64* %307, align 8
  ret void
}

declare dso_local i32 @load32be(i64) #1

declare dso_local i32 @ROR32(i32, i32) #1

declare dso_local i32 @LSR32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
