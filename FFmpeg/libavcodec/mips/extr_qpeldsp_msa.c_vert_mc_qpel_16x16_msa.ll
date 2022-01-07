; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_qpeldsp_msa.c_vert_mc_qpel_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @vert_mc_qpel_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_mc_qpel_16x16_msa(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %30 = call i32 @__msa_ldi_b(i32 20)
  store i32 %30, i32* %27, align 4
  %31 = call i32 @__msa_ldi_b(i32 6)
  store i32 %31, i32* %28, align 4
  %32 = call i32 @__msa_ldi_b(i32 3)
  store i32 %32, i32* %29, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @LD_UB4(i32* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 4, %40
  %42 = load i32*, i32** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @LD_UB(i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %27, align 4
  %60 = load i32, i32* %28, align 4
  %61 = load i32, i32* %29, align 4
  %62 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @ST_UB(i32 %63, i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @LD_UB(i32* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %27, align 4
  %85 = load i32, i32* %28, align 4
  %86 = load i32, i32* %29, align 4
  %87 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %26, align 4
  %88 = load i32, i32* %26, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @ST_UB(i32 %88, i32* %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %7, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @LD_UB(i32* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %27, align 4
  %110 = load i32, i32* %28, align 4
  %111 = load i32, i32* %29, align 4
  %112 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %26, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @ST_UB(i32 %113, i32* %114)
  %116 = load i32, i32* %8, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %7, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @LD_UB(i32* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %5, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %28, align 4
  %136 = load i32, i32* %29, align 4
  %137 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %26, align 4
  %138 = load i32, i32* %26, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @ST_UB(i32 %138, i32* %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %7, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @LD_UB(i32* %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %5, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %27, align 4
  %160 = load i32, i32* %28, align 4
  %161 = load i32, i32* %29, align 4
  %162 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %26, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @ST_UB(i32 %163, i32* %164)
  %166 = load i32, i32* %8, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %7, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @LD_UB(i32* %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %5, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* %29, align 4
  %187 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %26, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @ST_UB(i32 %188, i32* %189)
  %191 = load i32, i32* %8, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %7, align 8
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @LD_UB(i32* %195)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %5, align 8
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %28, align 4
  %211 = load i32, i32* %29, align 4
  %212 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  store i32 %212, i32* %26, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = call i32 @ST_UB(i32 %213, i32* %214)
  %216 = load i32, i32* %8, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %7, align 8
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @LD_UB(i32* %220)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32*, i32** %5, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %5, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %27, align 4
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %29, align 4
  %237 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  store i32 %237, i32* %26, align 4
  %238 = load i32, i32* %26, align 4
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @ST_UB(i32 %238, i32* %239)
  %241 = load i32, i32* %8, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %7, align 8
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 @LD_UB(i32* %245)
  store i32 %246, i32* %21, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32* %250, i32** %5, align 8
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %27, align 4
  %260 = load i32, i32* %28, align 4
  %261 = load i32, i32* %29, align 4
  %262 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  store i32 %262, i32* %26, align 4
  %263 = load i32, i32* %26, align 4
  %264 = load i32*, i32** %7, align 8
  %265 = call i32 @ST_UB(i32 %263, i32* %264)
  %266 = load i32, i32* %8, align 4
  %267 = load i32*, i32** %7, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %7, align 8
  %270 = load i32*, i32** %5, align 8
  %271 = call i32 @LD_UB(i32* %270)
  store i32 %271, i32* %22, align 4
  %272 = load i32, i32* %6, align 4
  %273 = load i32*, i32** %5, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %5, align 8
  %276 = load i32, i32* %18, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %22, align 4
  %284 = load i32, i32* %27, align 4
  %285 = load i32, i32* %28, align 4
  %286 = load i32, i32* %29, align 4
  %287 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286)
  store i32 %287, i32* %26, align 4
  %288 = load i32, i32* %26, align 4
  %289 = load i32*, i32** %7, align 8
  %290 = call i32 @ST_UB(i32 %288, i32* %289)
  %291 = load i32, i32* %8, align 4
  %292 = load i32*, i32** %7, align 8
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32* %294, i32** %7, align 8
  %295 = load i32*, i32** %5, align 8
  %296 = call i32 @LD_UB(i32* %295)
  store i32 %296, i32* %23, align 4
  %297 = load i32, i32* %6, align 4
  %298 = load i32*, i32** %5, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %5, align 8
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %21, align 4
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* %23, align 4
  %309 = load i32, i32* %27, align 4
  %310 = load i32, i32* %28, align 4
  %311 = load i32, i32* %29, align 4
  %312 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311)
  store i32 %312, i32* %26, align 4
  %313 = load i32, i32* %26, align 4
  %314 = load i32*, i32** %7, align 8
  %315 = call i32 @ST_UB(i32 %313, i32* %314)
  %316 = load i32, i32* %8, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32* %319, i32** %7, align 8
  %320 = load i32*, i32** %5, align 8
  %321 = call i32 @LD_UB(i32* %320)
  store i32 %321, i32* %24, align 4
  %322 = load i32, i32* %6, align 4
  %323 = load i32*, i32** %5, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32* %325, i32** %5, align 8
  %326 = load i32, i32* %20, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %18, align 4
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* %21, align 4
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %23, align 4
  %333 = load i32, i32* %24, align 4
  %334 = load i32, i32* %27, align 4
  %335 = load i32, i32* %28, align 4
  %336 = load i32, i32* %29, align 4
  %337 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  store i32 %337, i32* %26, align 4
  %338 = load i32, i32* %26, align 4
  %339 = load i32*, i32** %7, align 8
  %340 = call i32 @ST_UB(i32 %338, i32* %339)
  %341 = load i32, i32* %8, align 4
  %342 = load i32*, i32** %7, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  store i32* %344, i32** %7, align 8
  %345 = load i32*, i32** %5, align 8
  %346 = call i32 @LD_UB(i32* %345)
  store i32 %346, i32* %25, align 4
  %347 = load i32, i32* %21, align 4
  %348 = load i32, i32* %20, align 4
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* %18, align 4
  %351 = load i32, i32* %22, align 4
  %352 = load i32, i32* %23, align 4
  %353 = load i32, i32* %24, align 4
  %354 = load i32, i32* %25, align 4
  %355 = load i32, i32* %27, align 4
  %356 = load i32, i32* %28, align 4
  %357 = load i32, i32* %29, align 4
  %358 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357)
  store i32 %358, i32* %26, align 4
  %359 = load i32, i32* %26, align 4
  %360 = load i32*, i32** %7, align 8
  %361 = call i32 @ST_UB(i32 %359, i32* %360)
  %362 = load i32, i32* %8, align 4
  %363 = load i32*, i32** %7, align 8
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  store i32* %365, i32** %7, align 8
  %366 = load i32, i32* %22, align 4
  %367 = load i32, i32* %21, align 4
  %368 = load i32, i32* %20, align 4
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* %23, align 4
  %371 = load i32, i32* %24, align 4
  %372 = load i32, i32* %25, align 4
  %373 = load i32, i32* %25, align 4
  %374 = load i32, i32* %27, align 4
  %375 = load i32, i32* %28, align 4
  %376 = load i32, i32* %29, align 4
  %377 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 %376)
  store i32 %377, i32* %26, align 4
  %378 = load i32, i32* %26, align 4
  %379 = load i32*, i32** %7, align 8
  %380 = call i32 @ST_UB(i32 %378, i32* %379)
  %381 = load i32, i32* %8, align 4
  %382 = load i32*, i32** %7, align 8
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i32, i32* %382, i64 %383
  store i32* %384, i32** %7, align 8
  %385 = load i32, i32* %23, align 4
  %386 = load i32, i32* %22, align 4
  %387 = load i32, i32* %21, align 4
  %388 = load i32, i32* %20, align 4
  %389 = load i32, i32* %24, align 4
  %390 = load i32, i32* %25, align 4
  %391 = load i32, i32* %25, align 4
  %392 = load i32, i32* %24, align 4
  %393 = load i32, i32* %27, align 4
  %394 = load i32, i32* %28, align 4
  %395 = load i32, i32* %29, align 4
  %396 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394, i32 %395)
  store i32 %396, i32* %26, align 4
  %397 = load i32, i32* %26, align 4
  %398 = load i32*, i32** %7, align 8
  %399 = call i32 @ST_UB(i32 %397, i32* %398)
  %400 = load i32, i32* %8, align 4
  %401 = load i32*, i32** %7, align 8
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32* %403, i32** %7, align 8
  %404 = load i32, i32* %24, align 4
  %405 = load i32, i32* %23, align 4
  %406 = load i32, i32* %22, align 4
  %407 = load i32, i32* %21, align 4
  %408 = load i32, i32* %25, align 4
  %409 = load i32, i32* %25, align 4
  %410 = load i32, i32* %24, align 4
  %411 = load i32, i32* %23, align 4
  %412 = load i32, i32* %27, align 4
  %413 = load i32, i32* %28, align 4
  %414 = load i32, i32* %29, align 4
  %415 = call i32 @APPLY_VERT_QPEL_FILTER(i32 %404, i32 %405, i32 %406, i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414)
  store i32 %415, i32* %26, align 4
  %416 = load i32, i32* %26, align 4
  %417 = load i32*, i32** %7, align 8
  %418 = call i32 @ST_UB(i32 %416, i32* %417)
  %419 = load i32, i32* %8, align 4
  %420 = load i32*, i32** %7, align 8
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  store i32* %422, i32** %7, align 8
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB(i32*) #1

declare dso_local i32 @APPLY_VERT_QPEL_FILTER(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
