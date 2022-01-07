; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_idct_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_idct_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gt16x16_cnst = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @hevc_idct_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_idct_16x16_msa(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %2, align 8
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** @gt16x16_cnst, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32* %53, i32** %9, align 8
  store i32 2, i32* %3, align 4
  br label %54

54:                                               ; preds = %58, %1
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %3, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %152

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* %25, align 4
  %76 = call i32 @LD_SH16(i32* %59, i32 16, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %34, align 4
  %86 = load i32, i32* %35, align 4
  %87 = load i32, i32* %36, align 4
  %88 = load i32, i32* %37, align 4
  %89 = call i32 @ILVR_H4_SH(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %38, align 4
  %99 = load i32, i32* %39, align 4
  %100 = load i32, i32* %40, align 4
  %101 = load i32, i32* %41, align 4
  %102 = call i32 @ILVR_H4_SH(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %42, align 4
  %112 = load i32, i32* %43, align 4
  %113 = load i32, i32* %44, align 4
  %114 = load i32, i32* %45, align 4
  %115 = call i32 @ILVL_H4_SH(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %46, align 4
  %125 = load i32, i32* %47, align 4
  %126 = load i32, i32* %48, align 4
  %127 = load i32, i32* %49, align 4
  %128 = call i32 @ILVL_H4_SH(i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %34, align 4
  %130 = load i32, i32* %35, align 4
  %131 = load i32, i32* %36, align 4
  %132 = load i32, i32* %37, align 4
  %133 = load i32, i32* %38, align 4
  %134 = load i32, i32* %39, align 4
  %135 = load i32, i32* %40, align 4
  %136 = load i32, i32* %41, align 4
  %137 = load i32, i32* %42, align 4
  %138 = load i32, i32* %43, align 4
  %139 = load i32, i32* %44, align 4
  %140 = load i32, i32* %45, align 4
  %141 = load i32, i32* %46, align 4
  %142 = load i32, i32* %47, align 4
  %143 = load i32, i32* %48, align 4
  %144 = load i32, i32* %49, align 4
  %145 = call i32 @HEVC_IDCT16x16_COL(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 7)
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  store i32* %147, i32** %8, align 8
  %148 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  store i32* %149, i32** %7, align 8
  %150 = load i32*, i32** @gt16x16_cnst, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32* %151, i32** %9, align 8
  br label %54

152:                                              ; preds = %54
  %153 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  store i32* %153, i32** %8, align 8
  %154 = load i32*, i32** %2, align 8
  store i32* %154, i32** %7, align 8
  %155 = load i32*, i32** @gt16x16_cnst, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32* %156, i32** %9, align 8
  store i32 2, i32* %3, align 4
  br label %157

157:                                              ; preds = %161, %152
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %3, align 4
  %160 = icmp ne i32 %158, 0
  br i1 %160, label %161, label %289

161:                                              ; preds = %157
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %25, align 4
  %179 = call i32 @LD_SH16(i32* %162, i32 8, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %17, align 4
  %196 = call i32 @TRANSPOSE8x8_SH_SH(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %24, align 4
  %204 = load i32, i32* %25, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %22, align 4
  %210 = load i32, i32* %23, align 4
  %211 = load i32, i32* %24, align 4
  %212 = load i32, i32* %25, align 4
  %213 = call i32 @TRANSPOSE8x8_SH_SH(i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %24, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %34, align 4
  %223 = load i32, i32* %35, align 4
  %224 = load i32, i32* %36, align 4
  %225 = load i32, i32* %37, align 4
  %226 = call i32 @ILVR_H4_SH(i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %38, align 4
  %236 = load i32, i32* %39, align 4
  %237 = load i32, i32* %40, align 4
  %238 = load i32, i32* %41, align 4
  %239 = call i32 @ILVR_H4_SH(i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %22, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %24, align 4
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* %42, align 4
  %249 = load i32, i32* %43, align 4
  %250 = load i32, i32* %44, align 4
  %251 = load i32, i32* %45, align 4
  %252 = call i32 @ILVL_H4_SH(i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %23, align 4
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %25, align 4
  %261 = load i32, i32* %46, align 4
  %262 = load i32, i32* %47, align 4
  %263 = load i32, i32* %48, align 4
  %264 = load i32, i32* %49, align 4
  %265 = call i32 @ILVL_H4_SH(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %34, align 4
  %267 = load i32, i32* %35, align 4
  %268 = load i32, i32* %36, align 4
  %269 = load i32, i32* %37, align 4
  %270 = load i32, i32* %38, align 4
  %271 = load i32, i32* %39, align 4
  %272 = load i32, i32* %40, align 4
  %273 = load i32, i32* %41, align 4
  %274 = load i32, i32* %42, align 4
  %275 = load i32, i32* %43, align 4
  %276 = load i32, i32* %44, align 4
  %277 = load i32, i32* %45, align 4
  %278 = load i32, i32* %46, align 4
  %279 = load i32, i32* %47, align 4
  %280 = load i32, i32* %48, align 4
  %281 = load i32, i32* %49, align 4
  %282 = call i32 @HEVC_IDCT16x16_COL(i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 12)
  %283 = load i32*, i32** %8, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 128
  store i32* %284, i32** %8, align 8
  %285 = load i32*, i32** %2, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 8
  store i32* %286, i32** %7, align 8
  %287 = load i32*, i32** @gt16x16_cnst, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32* %288, i32** %9, align 8
  br label %157

289:                                              ; preds = %157
  %290 = load i32*, i32** %2, align 8
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @LD_SH8(i32* %290, i32 16, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298)
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %26, align 4
  %309 = load i32, i32* %27, align 4
  %310 = load i32, i32* %28, align 4
  %311 = load i32, i32* %29, align 4
  %312 = load i32, i32* %30, align 4
  %313 = load i32, i32* %31, align 4
  %314 = load i32, i32* %32, align 4
  %315 = load i32, i32* %33, align 4
  %316 = call i32 @TRANSPOSE8x8_SH_SH(i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* %26, align 4
  %318 = load i32, i32* %27, align 4
  %319 = load i32, i32* %28, align 4
  %320 = load i32, i32* %29, align 4
  %321 = load i32, i32* %30, align 4
  %322 = load i32, i32* %31, align 4
  %323 = load i32, i32* %32, align 4
  %324 = load i32, i32* %33, align 4
  %325 = load i32*, i32** %2, align 8
  %326 = call i32 @ST_SH8(i32 %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32* %325, i32 16)
  %327 = load i32*, i32** %2, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 8
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* %15, align 4
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %17, align 4
  %337 = call i32 @LD_SH8(i32* %328, i32 16, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %13, align 4
  %342 = load i32, i32* %14, align 4
  %343 = load i32, i32* %15, align 4
  %344 = load i32, i32* %16, align 4
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* %26, align 4
  %347 = load i32, i32* %27, align 4
  %348 = load i32, i32* %28, align 4
  %349 = load i32, i32* %29, align 4
  %350 = load i32, i32* %30, align 4
  %351 = load i32, i32* %31, align 4
  %352 = load i32, i32* %32, align 4
  %353 = load i32, i32* %33, align 4
  %354 = call i32 @TRANSPOSE8x8_SH_SH(i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353)
  %355 = load i32*, i32** %2, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 128
  %357 = load i32, i32* %18, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %20, align 4
  %360 = load i32, i32* %21, align 4
  %361 = load i32, i32* %22, align 4
  %362 = load i32, i32* %23, align 4
  %363 = load i32, i32* %24, align 4
  %364 = load i32, i32* %25, align 4
  %365 = call i32 @LD_SH8(i32* %356, i32 16, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364)
  %366 = load i32, i32* %26, align 4
  %367 = load i32, i32* %27, align 4
  %368 = load i32, i32* %28, align 4
  %369 = load i32, i32* %29, align 4
  %370 = load i32, i32* %30, align 4
  %371 = load i32, i32* %31, align 4
  %372 = load i32, i32* %32, align 4
  %373 = load i32, i32* %33, align 4
  %374 = load i32*, i32** %2, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 128
  %376 = call i32 @ST_SH8(i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373, i32* %375, i32 16)
  %377 = load i32, i32* %18, align 4
  %378 = load i32, i32* %19, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* %22, align 4
  %382 = load i32, i32* %23, align 4
  %383 = load i32, i32* %24, align 4
  %384 = load i32, i32* %25, align 4
  %385 = load i32, i32* %26, align 4
  %386 = load i32, i32* %27, align 4
  %387 = load i32, i32* %28, align 4
  %388 = load i32, i32* %29, align 4
  %389 = load i32, i32* %30, align 4
  %390 = load i32, i32* %31, align 4
  %391 = load i32, i32* %32, align 4
  %392 = load i32, i32* %33, align 4
  %393 = call i32 @TRANSPOSE8x8_SH_SH(i32 %377, i32 %378, i32 %379, i32 %380, i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392)
  %394 = load i32, i32* %26, align 4
  %395 = load i32, i32* %27, align 4
  %396 = load i32, i32* %28, align 4
  %397 = load i32, i32* %29, align 4
  %398 = load i32, i32* %30, align 4
  %399 = load i32, i32* %31, align 4
  %400 = load i32, i32* %32, align 4
  %401 = load i32, i32* %33, align 4
  %402 = load i32*, i32** %2, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 8
  %404 = call i32 @ST_SH8(i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32* %403, i32 16)
  %405 = load i32*, i32** %2, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 136
  %407 = load i32, i32* %10, align 4
  %408 = load i32, i32* %11, align 4
  %409 = load i32, i32* %12, align 4
  %410 = load i32, i32* %13, align 4
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* %17, align 4
  %415 = call i32 @LD_SH8(i32* %406, i32 16, i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414)
  %416 = load i32, i32* %10, align 4
  %417 = load i32, i32* %11, align 4
  %418 = load i32, i32* %12, align 4
  %419 = load i32, i32* %13, align 4
  %420 = load i32, i32* %14, align 4
  %421 = load i32, i32* %15, align 4
  %422 = load i32, i32* %16, align 4
  %423 = load i32, i32* %17, align 4
  %424 = load i32, i32* %26, align 4
  %425 = load i32, i32* %27, align 4
  %426 = load i32, i32* %28, align 4
  %427 = load i32, i32* %29, align 4
  %428 = load i32, i32* %30, align 4
  %429 = load i32, i32* %31, align 4
  %430 = load i32, i32* %32, align 4
  %431 = load i32, i32* %33, align 4
  %432 = call i32 @TRANSPOSE8x8_SH_SH(i32 %416, i32 %417, i32 %418, i32 %419, i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i32 %425, i32 %426, i32 %427, i32 %428, i32 %429, i32 %430, i32 %431)
  %433 = load i32, i32* %26, align 4
  %434 = load i32, i32* %27, align 4
  %435 = load i32, i32* %28, align 4
  %436 = load i32, i32* %29, align 4
  %437 = load i32, i32* %30, align 4
  %438 = load i32, i32* %31, align 4
  %439 = load i32, i32* %32, align 4
  %440 = load i32, i32* %33, align 4
  %441 = load i32*, i32** %2, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 136
  %443 = call i32 @ST_SH8(i32 %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 %438, i32 %439, i32 %440, i32* %442, i32 16)
  ret void
}

declare dso_local i32 @LD_SH16(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_IDCT16x16_COL(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TRANSPOSE8x8_SH_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
