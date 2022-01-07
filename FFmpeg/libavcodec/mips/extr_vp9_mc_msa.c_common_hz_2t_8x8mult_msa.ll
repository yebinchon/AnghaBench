; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_8x8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_8x8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_2t_8x8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_2t_8x8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load i32*, i32** @mc_filt_mask_arr, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @LD_SB(i32* %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @LD_UH(i32* %29)
  store i64 %30, i64* %25, align 8
  %31 = load i64, i64* %25, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @__msa_splati_h(i32 %32, i32 0)
  store i64 %33, i64* %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @LD_SB4(i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 4, %41
  %43 = load i32*, i32** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i64, i64* %21, align 8
  %53 = load i64, i64* %22, align 8
  %54 = call i32 @VSHF_B2_UH(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i64 %52, i64 %53)
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i64, i64* %23, align 8
  %62 = load i64, i64* %24, align 8
  %63 = call i32 @VSHF_B2_UH(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i64 %61, i64 %62)
  %64 = load i64, i64* %21, align 8
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* %23, align 8
  %67 = load i64, i64* %24, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %23, align 8
  %75 = load i64, i64* %24, align 8
  %76 = call i32 @DOTP_UB4_UH(i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75)
  %77 = load i64, i64* %21, align 8
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* %23, align 8
  %80 = load i64, i64* %24, align 8
  %81 = call i32 @SRARI_H4_UH(i64 %77, i64 %78, i64 %79, i64 %80, i32 7)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @LD_SB4(i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 4, %89
  %91 = load i32*, i32** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %7, align 8
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %24, align 8
  %97 = load i64, i64* %23, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @PCKEV_B2_SB(i64 %94, i64 %95, i64 %96, i64 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ST_D4(i32 %101, i32 %102, i32 0, i32 1, i32 0, i32 1, i32* %103, i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %22, align 8
  %114 = call i32 @VSHF_B2_UH(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %24, align 8
  %123 = call i32 @VSHF_B2_UH(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %24, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %24, align 8
  %136 = call i32 @DOTP_UB4_UH(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %22, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %24, align 8
  %141 = call i32 @SRARI_H4_UH(i64 %137, i64 %138, i64 %139, i64 %140, i32 7)
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %21, align 8
  %144 = load i64, i64* %24, align 8
  %145 = load i64, i64* %23, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @PCKEV_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %10, align 4
  %153 = mul nsw i32 4, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ST_D4(i32 %149, i32 %150, i32 0, i32 1, i32 0, i32 1, i32* %155, i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = mul nsw i32 8, %158
  %160 = load i32*, i32** %9, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %9, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 16, %163
  br i1 %164, label %165, label %290

165:                                              ; preds = %6
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @LD_SB4(i32* %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = mul nsw i32 4, %173
  %175 = load i32*, i32** %7, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %7, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i64, i64* %21, align 8
  %185 = load i64, i64* %22, align 8
  %186 = call i32 @VSHF_B2_UH(i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i64 %184, i64 %185)
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load i64, i64* %23, align 8
  %194 = load i64, i64* %24, align 8
  %195 = call i32 @VSHF_B2_UH(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %21, align 8
  %197 = load i64, i64* %22, align 8
  %198 = load i64, i64* %23, align 8
  %199 = load i64, i64* %24, align 8
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* %13, align 8
  %204 = load i64, i64* %21, align 8
  %205 = load i64, i64* %22, align 8
  %206 = load i64, i64* %23, align 8
  %207 = load i64, i64* %24, align 8
  %208 = call i32 @DOTP_UB4_UH(i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207)
  %209 = load i64, i64* %21, align 8
  %210 = load i64, i64* %22, align 8
  %211 = load i64, i64* %23, align 8
  %212 = load i64, i64* %24, align 8
  %213 = call i32 @SRARI_H4_UH(i64 %209, i64 %210, i64 %211, i64 %212, i32 7)
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @LD_SB4(i32* %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = mul nsw i32 4, %221
  %223 = load i32*, i32** %7, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %7, align 8
  %226 = load i64, i64* %22, align 8
  %227 = load i64, i64* %21, align 8
  %228 = load i64, i64* %24, align 8
  %229 = load i64, i64* %23, align 8
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = call i32 @PCKEV_B2_SB(i64 %226, i64 %227, i64 %228, i64 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %20, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @ST_D4(i32 %233, i32 %234, i32 0, i32 1, i32 0, i32 1, i32* %235, i32 %236)
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i64, i64* %21, align 8
  %245 = load i64, i64* %22, align 8
  %246 = call i32 @VSHF_B2_UH(i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i64 %244, i64 %245)
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i64, i64* %23, align 8
  %254 = load i64, i64* %24, align 8
  %255 = call i32 @VSHF_B2_UH(i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i64 %253, i64 %254)
  %256 = load i64, i64* %21, align 8
  %257 = load i64, i64* %22, align 8
  %258 = load i64, i64* %23, align 8
  %259 = load i64, i64* %24, align 8
  %260 = load i64, i64* %13, align 8
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* %13, align 8
  %263 = load i64, i64* %13, align 8
  %264 = load i64, i64* %21, align 8
  %265 = load i64, i64* %22, align 8
  %266 = load i64, i64* %23, align 8
  %267 = load i64, i64* %24, align 8
  %268 = call i32 @DOTP_UB4_UH(i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267)
  %269 = load i64, i64* %21, align 8
  %270 = load i64, i64* %22, align 8
  %271 = load i64, i64* %23, align 8
  %272 = load i64, i64* %24, align 8
  %273 = call i32 @SRARI_H4_UH(i64 %269, i64 %270, i64 %271, i64 %272, i32 7)
  %274 = load i64, i64* %22, align 8
  %275 = load i64, i64* %21, align 8
  %276 = load i64, i64* %24, align 8
  %277 = load i64, i64* %23, align 8
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %20, align 4
  %280 = call i32 @PCKEV_B2_SB(i64 %274, i64 %275, i64 %276, i64 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* %20, align 4
  %283 = load i32*, i32** %9, align 8
  %284 = load i32, i32* %10, align 4
  %285 = mul nsw i32 4, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %10, align 4
  %289 = call i32 @ST_D4(i32 %281, i32 %282, i32 0, i32 1, i32 0, i32 1, i32* %287, i32 %288)
  br label %290

290:                                              ; preds = %165, %6
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UH(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
