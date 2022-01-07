; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %9, align 8
  %49 = call i32 @__msa_ldi_h(i32 128)
  store i32 %49, i32* %43, align 4
  %50 = load i32, i32* %43, align 4
  %51 = shl i32 %50, 6
  store i32 %51, i32* %43, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @LD_SH(i32* %52)
  store i32 %53, i32* %42, align 4
  %54 = load i32, i32* %42, align 4
  %55 = load i32, i32* %40, align 4
  %56 = load i32, i32* %41, align 4
  %57 = call i32 @SPLATI_H2_SH(i32 %54, i32 0, i32 1, i32 %55, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @LD_SB3(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 3, %64
  %66 = load i32*, i32** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @XORI_B3_128_SB(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %28, align 4
  %78 = load i32, i32* %30, align 4
  %79 = call i32 @ILVR_B2_SB(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %32, align 4
  %85 = load i32, i32* %34, align 4
  %86 = call i32 @ILVL_B2_SB(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %16, align 4
  %88 = ashr i32 %87, 2
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %93, %8
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %17, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %304

93:                                               ; preds = %89
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @LD_SB2(i32* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 2, %99
  %101 = load i32*, i32** %9, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %9, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %25, align 4
  %108 = call i32 @LD_SH2(i32* %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %26, align 4
  %113 = load i32, i32* %27, align 4
  %114 = call i32 @LD_SH2(i32* %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 2, %115
  %117 = load i32*, i32** %11, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %11, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @XORI_B2_128_SB(i32 %120, i32 %121)
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %29, align 4
  %128 = load i32, i32* %31, align 4
  %129 = call i32 @ILVR_B2_SB(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %35, align 4
  %136 = call i32 @ILVL_B2_SB(i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %43, align 4
  store i32 %137, i32* %36, align 4
  %138 = load i32, i32* %28, align 4
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* %40, align 4
  %141 = load i32, i32* %41, align 4
  %142 = load i32, i32* %36, align 4
  %143 = load i32, i32* %36, align 4
  %144 = call i32 @DPADD_SB2_SH(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %43, align 4
  store i32 %145, i32* %37, align 4
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %40, align 4
  %149 = load i32, i32* %41, align 4
  %150 = load i32, i32* %37, align 4
  %151 = load i32, i32* %37, align 4
  %152 = call i32 @DPADD_SB2_SH(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %43, align 4
  store i32 %153, i32* %38, align 4
  %154 = load i32, i32* %32, align 4
  %155 = load i32, i32* %33, align 4
  %156 = load i32, i32* %40, align 4
  %157 = load i32, i32* %41, align 4
  %158 = load i32, i32* %38, align 4
  %159 = load i32, i32* %38, align 4
  %160 = call i32 @DPADD_SB2_SH(i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %43, align 4
  store i32 %161, i32* %39, align 4
  %162 = load i32, i32* %34, align 4
  %163 = load i32, i32* %35, align 4
  %164 = load i32, i32* %40, align 4
  %165 = load i32, i32* %41, align 4
  %166 = load i32, i32* %39, align 4
  %167 = load i32, i32* %39, align 4
  %168 = call i32 @DPADD_SB2_SH(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %25, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %36, align 4
  %174 = load i32, i32* %37, align 4
  %175 = load i32, i32* %38, align 4
  %176 = load i32, i32* %39, align 4
  %177 = load i32, i32* %36, align 4
  %178 = load i32, i32* %37, align 4
  %179 = load i32, i32* %38, align 4
  %180 = load i32, i32* %39, align 4
  %181 = call i32 @HEVC_BI_RND_CLIP4(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 7, i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* %38, align 4
  %183 = load i32, i32* %36, align 4
  %184 = load i32, i32* %39, align 4
  %185 = load i32, i32* %37, align 4
  %186 = load i32, i32* %36, align 4
  %187 = load i32, i32* %37, align 4
  %188 = call i32 @PCKEV_B2_SH(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %36, align 4
  %190 = load i32, i32* %37, align 4
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @ST_SH2(i32 %189, i32 %190, i32* %191, i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = mul nsw i32 2, %194
  %196 = load i32*, i32** %13, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %13, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %20, align 4
  %203 = call i32 @LD_SB2(i32* %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %10, align 4
  %205 = mul nsw i32 2, %204
  %206 = load i32*, i32** %9, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %9, align 8
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %24, align 4
  %212 = load i32, i32* %25, align 4
  %213 = call i32 @LD_SH2(i32* %209, i32 %210, i32 %211, i32 %212)
  %214 = load i32*, i32** %11, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 8
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %27, align 4
  %219 = call i32 @LD_SH2(i32* %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %12, align 4
  %221 = mul nsw i32 2, %220
  %222 = load i32*, i32** %11, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %11, align 8
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %20, align 4
  %227 = call i32 @XORI_B2_128_SB(i32 %225, i32 %226)
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* %28, align 4
  %233 = load i32, i32* %30, align 4
  %234 = call i32 @ILVR_B2_SB(i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %23, align 4
  %239 = load i32, i32* %32, align 4
  %240 = load i32, i32* %34, align 4
  %241 = call i32 @ILVL_B2_SB(i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load i32, i32* %43, align 4
  store i32 %242, i32* %36, align 4
  %243 = load i32, i32* %29, align 4
  %244 = load i32, i32* %28, align 4
  %245 = load i32, i32* %40, align 4
  %246 = load i32, i32* %41, align 4
  %247 = load i32, i32* %36, align 4
  %248 = load i32, i32* %36, align 4
  %249 = call i32 @DPADD_SB2_SH(i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %43, align 4
  store i32 %250, i32* %38, align 4
  %251 = load i32, i32* %33, align 4
  %252 = load i32, i32* %32, align 4
  %253 = load i32, i32* %40, align 4
  %254 = load i32, i32* %41, align 4
  %255 = load i32, i32* %38, align 4
  %256 = load i32, i32* %38, align 4
  %257 = call i32 @DPADD_SB2_SH(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  %258 = load i32, i32* %43, align 4
  store i32 %258, i32* %37, align 4
  %259 = load i32, i32* %31, align 4
  %260 = load i32, i32* %30, align 4
  %261 = load i32, i32* %40, align 4
  %262 = load i32, i32* %41, align 4
  %263 = load i32, i32* %37, align 4
  %264 = load i32, i32* %37, align 4
  %265 = call i32 @DPADD_SB2_SH(i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %43, align 4
  store i32 %266, i32* %39, align 4
  %267 = load i32, i32* %35, align 4
  %268 = load i32, i32* %34, align 4
  %269 = load i32, i32* %40, align 4
  %270 = load i32, i32* %41, align 4
  %271 = load i32, i32* %39, align 4
  %272 = load i32, i32* %39, align 4
  %273 = call i32 @DPADD_SB2_SH(i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %24, align 4
  %275 = load i32, i32* %25, align 4
  %276 = load i32, i32* %26, align 4
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* %36, align 4
  %279 = load i32, i32* %37, align 4
  %280 = load i32, i32* %38, align 4
  %281 = load i32, i32* %39, align 4
  %282 = load i32, i32* %36, align 4
  %283 = load i32, i32* %37, align 4
  %284 = load i32, i32* %38, align 4
  %285 = load i32, i32* %39, align 4
  %286 = call i32 @HEVC_BI_RND_CLIP4(i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 7, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %38, align 4
  %288 = load i32, i32* %36, align 4
  %289 = load i32, i32* %39, align 4
  %290 = load i32, i32* %37, align 4
  %291 = load i32, i32* %36, align 4
  %292 = load i32, i32* %37, align 4
  %293 = call i32 @PCKEV_B2_SH(i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %36, align 4
  %295 = load i32, i32* %37, align 4
  %296 = load i32*, i32** %13, align 8
  %297 = load i32, i32* %14, align 4
  %298 = call i32 @ST_SH2(i32 %294, i32 %295, i32* %296, i32 %297)
  %299 = load i32, i32* %14, align 4
  %300 = mul nsw i32 2, %299
  %301 = load i32*, i32** %13, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %13, align 8
  br label %89

304:                                              ; preds = %89
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
