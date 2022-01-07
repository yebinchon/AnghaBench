; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadct.c_imdct_half_64.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadct.c_imdct_half_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @imdct_half_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_half_64(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @abs(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 4194304
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 0
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = shl i32 1, %38
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ]
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %59, %41
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 64
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %43

62:                                               ; preds = %43
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @sum_a(i32* %63, i32* %65, i32 32)
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %69 = getelementptr inbounds i32, i32* %68, i64 32
  %70 = call i32 @sum_b(i32* %67, i32* %69, i32 32)
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %72 = call i32 @clp_v(i32* %71, i32 64)
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i32 @sum_a(i32* %74, i32* %76, i32 16)
  %78 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  %82 = call i32 @sum_b(i32* %79, i32* %81, i32 16)
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %84 = getelementptr inbounds i32, i32* %83, i64 32
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %86 = getelementptr inbounds i32, i32* %85, i64 32
  %87 = call i32 @sum_c(i32* %84, i32* %86, i32 16)
  %88 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 32
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %91 = getelementptr inbounds i32, i32* %90, i64 48
  %92 = call i32 @sum_d(i32* %89, i32* %91, i32 16)
  %93 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %94 = call i32 @clp_v(i32* %93, i32 64)
  %95 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @sum_a(i32* %96, i32* %98, i32 8)
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = call i32 @sum_b(i32* %101, i32* %103, i32 8)
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %106 = getelementptr inbounds i32, i32* %105, i64 16
  %107 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %108 = getelementptr inbounds i32, i32* %107, i64 16
  %109 = call i32 @sum_c(i32* %106, i32* %108, i32 8)
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %111 = getelementptr inbounds i32, i32* %110, i64 16
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %113 = getelementptr inbounds i32, i32* %112, i64 24
  %114 = call i32 @sum_d(i32* %111, i32* %113, i32 8)
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %116 = getelementptr inbounds i32, i32* %115, i64 32
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 32
  %119 = call i32 @sum_c(i32* %116, i32* %118, i32 8)
  %120 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %121 = getelementptr inbounds i32, i32* %120, i64 32
  %122 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %123 = getelementptr inbounds i32, i32* %122, i64 40
  %124 = call i32 @sum_d(i32* %121, i32* %123, i32 8)
  %125 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %126 = getelementptr inbounds i32, i32* %125, i64 48
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %128 = getelementptr inbounds i32, i32* %127, i64 48
  %129 = call i32 @sum_c(i32* %126, i32* %128, i32 8)
  %130 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %131 = getelementptr inbounds i32, i32* %130, i64 48
  %132 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %133 = getelementptr inbounds i32, i32* %132, i64 56
  %134 = call i32 @sum_d(i32* %131, i32* %133, i32 8)
  %135 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %136 = call i32 @clp_v(i32* %135, i32 64)
  %137 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = call i32 @dct_a(i32* %138, i32* %140)
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %143 = getelementptr inbounds i32, i32* %142, i64 8
  %144 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %145 = getelementptr inbounds i32, i32* %144, i64 8
  %146 = call i32 @dct_b(i32* %143, i32* %145)
  %147 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %148 = getelementptr inbounds i32, i32* %147, i64 16
  %149 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %150 = getelementptr inbounds i32, i32* %149, i64 16
  %151 = call i32 @dct_b(i32* %148, i32* %150)
  %152 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %153 = getelementptr inbounds i32, i32* %152, i64 24
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %155 = getelementptr inbounds i32, i32* %154, i64 24
  %156 = call i32 @dct_b(i32* %153, i32* %155)
  %157 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %158 = getelementptr inbounds i32, i32* %157, i64 32
  %159 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %160 = getelementptr inbounds i32, i32* %159, i64 32
  %161 = call i32 @dct_b(i32* %158, i32* %160)
  %162 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %163 = getelementptr inbounds i32, i32* %162, i64 40
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %165 = getelementptr inbounds i32, i32* %164, i64 40
  %166 = call i32 @dct_b(i32* %163, i32* %165)
  %167 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %168 = getelementptr inbounds i32, i32* %167, i64 48
  %169 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %170 = getelementptr inbounds i32, i32* %169, i64 48
  %171 = call i32 @dct_b(i32* %168, i32* %170)
  %172 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %173 = getelementptr inbounds i32, i32* %172, i64 56
  %174 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %175 = getelementptr inbounds i32, i32* %174, i64 56
  %176 = call i32 @dct_b(i32* %173, i32* %175)
  %177 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %178 = call i32 @clp_v(i32* %177, i32 64)
  %179 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = call i32 @mod_a(i32* %180, i32* %182)
  %184 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %185 = getelementptr inbounds i32, i32* %184, i64 16
  %186 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %187 = getelementptr inbounds i32, i32* %186, i64 16
  %188 = call i32 @mod_b(i32* %185, i32* %187)
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %190 = getelementptr inbounds i32, i32* %189, i64 32
  %191 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %192 = getelementptr inbounds i32, i32* %191, i64 32
  %193 = call i32 @mod_b(i32* %190, i32* %192)
  %194 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %195 = getelementptr inbounds i32, i32* %194, i64 48
  %196 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %197 = getelementptr inbounds i32, i32* %196, i64 48
  %198 = call i32 @mod_b(i32* %195, i32* %197)
  %199 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %200 = call i32 @clp_v(i32* %199, i32 64)
  %201 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = call i32 @mod64_a(i32* %202, i32* %204)
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %207 = getelementptr inbounds i32, i32* %206, i64 32
  %208 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %209 = getelementptr inbounds i32, i32* %208, i64 32
  %210 = call i32 @mod64_b(i32* %207, i32* %209)
  %211 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %212 = call i32 @clp_v(i32* %211, i32 64)
  %213 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %214 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %215 = call i32 @mod64_c(i32* %213, i32* %214)
  store i32 0, i32* %7, align 4
  br label %216

216:                                              ; preds = %231, %62
  %217 = load i32, i32* %7, align 4
  %218 = icmp slt i32 %217, 64
  br i1 %218, label %219, label %234

219:                                              ; preds = %216
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %10, align 4
  %225 = shl i32 1, %224
  %226 = mul nsw i32 %223, %225
  %227 = call i32 @clip23(i32 %226)
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %229
  store i32 %227, i32* %230, align 4
  br label %231

231:                                              ; preds = %219
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %216

234:                                              ; preds = %216
  store i32 0, i32* %7, align 4
  store i32 63, i32* %8, align 4
  br label %235

235:                                              ; preds = %268, %234
  %236 = load i32, i32* %7, align 4
  %237 = icmp slt i32 %236, 32
  br i1 %237, label %238, label %273

238:                                              ; preds = %235
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %242, %246
  %248 = call i32 @clip23(i32 %247)
  %249 = load i32*, i32** %3, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %248, i32* %252, align 4
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %256, %260
  %262 = call i32 @clip23(i32 %261)
  %263 = load i32*, i32** %3, align 8
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 32, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %262, i32* %267, align 4
  br label %268

268:                                              ; preds = %238
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %8, align 4
  br label %235

273:                                              ; preds = %235
  ret void
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @sum_a(i32*, i32*, i32) #1

declare dso_local i32 @sum_b(i32*, i32*, i32) #1

declare dso_local i32 @clp_v(i32*, i32) #1

declare dso_local i32 @sum_c(i32*, i32*, i32) #1

declare dso_local i32 @sum_d(i32*, i32*, i32) #1

declare dso_local i32 @dct_a(i32*, i32*) #1

declare dso_local i32 @dct_b(i32*, i32*) #1

declare dso_local i32 @mod_a(i32*, i32*) #1

declare dso_local i32 @mod_b(i32*, i32*) #1

declare dso_local i32 @mod64_a(i32*, i32*) #1

declare dso_local i32 @mod64_b(i32*, i32*) #1

declare dso_local i32 @mod64_c(i32*, i32*) #1

declare dso_local i32 @clip23(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
