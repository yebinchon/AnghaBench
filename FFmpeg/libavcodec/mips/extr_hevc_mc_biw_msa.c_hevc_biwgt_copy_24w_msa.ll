; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_biwgt_copy_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32)* @hevc_biwgt_copy_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_biwgt_copy_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
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
  %34 = alloca %struct.TYPE_12__, align 4
  %35 = alloca %struct.TYPE_12__, align 4
  %36 = alloca %struct.TYPE_12__, align 4
  %37 = alloca %struct.TYPE_12__, align 4
  %38 = alloca %struct.TYPE_12__, align 4
  %39 = alloca %struct.TYPE_12__, align 4
  %40 = alloca %struct.TYPE_12__, align 4
  %41 = alloca %struct.TYPE_12__, align 4
  %42 = alloca %struct.TYPE_12__, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %70 = bitcast %struct.TYPE_12__* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %70, i8 0, i64 4, i1 false)
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %23, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %24, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %26, align 4
  %76 = load i32, i32* %20, align 4
  %77 = and i32 %76, 65535
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %78, %80
  store i32 %81, i32* %27, align 4
  %82 = load i32, i32* %26, align 4
  %83 = call i32 @__msa_fill_w(i32 %82)
  store i32 %83, i32* %67, align 4
  %84 = load i32, i32* %27, align 4
  %85 = call i32 @__msa_fill_w(i32 %84)
  store i32 %85, i32* %68, align 4
  %86 = load i32, i32* %24, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @__msa_fill_w(i32 %87)
  store i32 %88, i32* %69, align 4
  store i32 8, i32* %25, align 4
  br label %89

89:                                               ; preds = %93, %12
  %90 = load i32, i32* %25, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %25, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %301

93:                                               ; preds = %89
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @LD_SB4(i32* %94, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103)
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 16
  %107 = load i32, i32* %14, align 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @LD_SB4(i32* %106, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 4, %117
  %119 = load i32*, i32** %13, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %13, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %54, align 4
  %125 = load i32, i32* %55, align 4
  %126 = load i32, i32* %56, align 4
  %127 = load i32, i32* %57, align 4
  %128 = call i32 @LD_SH4(i32* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32*, i32** %15, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %58, align 4
  %133 = load i32, i32* %59, align 4
  %134 = load i32, i32* %60, align 4
  %135 = load i32, i32* %61, align 4
  %136 = call i32 @LD_SH4(i32* %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32*, i32** %15, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 16
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %62, align 4
  %141 = load i32, i32* %63, align 4
  %142 = load i32, i32* %64, align 4
  %143 = load i32, i32* %65, align 4
  %144 = call i32 @LD_SH4(i32* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %16, align 4
  %146 = mul nsw i32 4, %145
  %147 = load i32*, i32** %15, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %15, align 8
  %150 = load i32, i32* %43, align 4
  %151 = load i32, i32* %44, align 4
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ILVRL_B2_SH(i32 %153, i32 %155, i32 %150, i32 %151)
  %157 = load i32, i32* %45, align 4
  %158 = load i32, i32* %46, align 4
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ILVRL_B2_SH(i32 %160, i32 %162, i32 %157, i32 %158)
  %164 = load i32, i32* %47, align 4
  %165 = load i32, i32* %48, align 4
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ILVR_B2_SH(i32 %167, i32 %169, i32 %171, i32 %173, i32 %164, i32 %165)
  %175 = load i32, i32* %49, align 4
  %176 = load i32, i32* %50, align 4
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ILVRL_B2_SH(i32 %178, i32 %180, i32 %175, i32 %176)
  %182 = load i32, i32* %51, align 4
  %183 = load i32, i32* %52, align 4
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ILVRL_B2_SH(i32 %185, i32 %187, i32 %182, i32 %183)
  %189 = load i32, i32* %53, align 4
  %190 = load i32, i32* %66, align 4
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ILVR_B2_SH(i32 %192, i32 %194, i32 %196, i32 %198, i32 %189, i32 %190)
  %200 = load i32, i32* %43, align 4
  %201 = load i32, i32* %44, align 4
  %202 = load i32, i32* %45, align 4
  %203 = load i32, i32* %46, align 4
  %204 = call i32 @SLLI_4V(i32 %200, i32 %201, i32 %202, i32 %203, i32 6)
  %205 = load i32, i32* %47, align 4
  %206 = load i32, i32* %48, align 4
  %207 = load i32, i32* %49, align 4
  %208 = load i32, i32* %50, align 4
  %209 = call i32 @SLLI_4V(i32 %205, i32 %206, i32 %207, i32 %208, i32 6)
  %210 = load i32, i32* %51, align 4
  %211 = load i32, i32* %52, align 4
  %212 = load i32, i32* %53, align 4
  %213 = load i32, i32* %66, align 4
  %214 = call i32 @SLLI_4V(i32 %210, i32 %211, i32 %212, i32 %213, i32 6)
  %215 = load i32, i32* %43, align 4
  %216 = load i32, i32* %44, align 4
  %217 = load i32, i32* %45, align 4
  %218 = load i32, i32* %46, align 4
  %219 = load i32, i32* %54, align 4
  %220 = load i32, i32* %58, align 4
  %221 = load i32, i32* %55, align 4
  %222 = load i32, i32* %59, align 4
  %223 = load i32, i32* %68, align 4
  %224 = load i32, i32* %69, align 4
  %225 = load i32, i32* %67, align 4
  %226 = load i32, i32* %43, align 4
  %227 = load i32, i32* %44, align 4
  %228 = load i32, i32* %45, align 4
  %229 = load i32, i32* %46, align 4
  %230 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %47, align 4
  %232 = load i32, i32* %48, align 4
  %233 = load i32, i32* %49, align 4
  %234 = load i32, i32* %50, align 4
  %235 = load i32, i32* %62, align 4
  %236 = load i32, i32* %63, align 4
  %237 = load i32, i32* %56, align 4
  %238 = load i32, i32* %60, align 4
  %239 = load i32, i32* %68, align 4
  %240 = load i32, i32* %69, align 4
  %241 = load i32, i32* %67, align 4
  %242 = load i32, i32* %47, align 4
  %243 = load i32, i32* %48, align 4
  %244 = load i32, i32* %49, align 4
  %245 = load i32, i32* %50, align 4
  %246 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %51, align 4
  %248 = load i32, i32* %52, align 4
  %249 = load i32, i32* %53, align 4
  %250 = load i32, i32* %66, align 4
  %251 = load i32, i32* %57, align 4
  %252 = load i32, i32* %61, align 4
  %253 = load i32, i32* %64, align 4
  %254 = load i32, i32* %65, align 4
  %255 = load i32, i32* %68, align 4
  %256 = load i32, i32* %69, align 4
  %257 = load i32, i32* %67, align 4
  %258 = load i32, i32* %51, align 4
  %259 = load i32, i32* %52, align 4
  %260 = load i32, i32* %53, align 4
  %261 = load i32, i32* %66, align 4
  %262 = call i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %44, align 4
  %264 = load i32, i32* %43, align 4
  %265 = load i32, i32* %46, align 4
  %266 = load i32, i32* %45, align 4
  %267 = load i32, i32* %48, align 4
  %268 = load i32, i32* %47, align 4
  %269 = load i32, i32* %28, align 4
  %270 = load i32, i32* %29, align 4
  %271 = load i32, i32* %30, align 4
  %272 = call i32 @PCKEV_B3_UB(i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* %50, align 4
  %274 = load i32, i32* %49, align 4
  %275 = load i32, i32* %52, align 4
  %276 = load i32, i32* %51, align 4
  %277 = load i32, i32* %66, align 4
  %278 = load i32, i32* %53, align 4
  %279 = load i32, i32* %31, align 4
  %280 = load i32, i32* %32, align 4
  %281 = load i32, i32* %33, align 4
  %282 = call i32 @PCKEV_B3_UB(i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281)
  %283 = load i32, i32* %28, align 4
  %284 = load i32, i32* %29, align 4
  %285 = load i32, i32* %31, align 4
  %286 = load i32, i32* %32, align 4
  %287 = load i32*, i32** %17, align 8
  %288 = load i32, i32* %18, align 4
  %289 = call i32 @ST_UB4(i32 %283, i32 %284, i32 %285, i32 %286, i32* %287, i32 %288)
  %290 = load i32, i32* %30, align 4
  %291 = load i32, i32* %33, align 4
  %292 = load i32*, i32** %17, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 16
  %294 = load i32, i32* %18, align 4
  %295 = call i32 @ST_D4(i32 %290, i32 %291, i32 0, i32 1, i32 0, i32 1, i32* %293, i32 %294)
  %296 = load i32, i32* %18, align 4
  %297 = mul nsw i32 4, %296
  %298 = load i32*, i32** %17, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %17, align 8
  br label %89

301:                                              ; preds = %89
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__msa_fill_w(i32) #2

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVRL_B2_SH(i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HEVC_BIW_RND_CLIP4_MAX_SATU(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
