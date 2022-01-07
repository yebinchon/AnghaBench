; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_8t_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_8t_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
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
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %70 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i64 @LD_SB(i32* %71)
  store i64 %72, i64* %46, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -3
  store i32* %74, i32** %14, align 8
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %25, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %26, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %32, align 4
  %80 = load i32, i32* %22, align 4
  %81 = and i32 %80, 65535
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %23, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %82, %84
  store i32 %85, i32* %33, align 4
  %86 = load i32, i32* %23, align 4
  %87 = mul nsw i32 128, %86
  store i32 %87, i32* %34, align 4
  %88 = load i32, i32* %34, align 4
  %89 = shl i32 %88, 6
  store i32 %89, i32* %34, align 4
  %90 = load i32, i32* %34, align 4
  %91 = load i32, i32* %32, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %32, align 4
  %93 = load i32, i32* %32, align 4
  %94 = call i32 @__msa_fill_w(i32 %93)
  store i32 %94, i32* %68, align 4
  %95 = load i32, i32* %33, align 4
  %96 = call i32 @__msa_fill_w(i32 %95)
  store i32 %96, i32* %67, align 4
  %97 = load i32, i32* %26, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @__msa_fill_w(i32 %98)
  store i32 %99, i32* %69, align 4
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @LD_SH(i32* %100)
  store i32 %101, i32* %62, align 4
  %102 = load i32, i32* %62, align 4
  %103 = load i32, i32* %42, align 4
  %104 = load i32, i32* %43, align 4
  %105 = load i32, i32* %44, align 4
  %106 = load i32, i32* %45, align 4
  %107 = call i32 @SPLATI_H4_SH(i32 %102, i32 0, i32 1, i32 2, i32 3, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i64, i64* %46, align 8
  %109 = add nsw i64 %108, 2
  store i64 %109, i64* %47, align 8
  %110 = load i64, i64* %46, align 8
  %111 = add nsw i64 %110, 4
  store i64 %111, i64* %48, align 8
  %112 = load i64, i64* %46, align 8
  %113 = add nsw i64 %112, 6
  store i64 %113, i64* %49, align 8
  %114 = load i64, i64* %46, align 8
  %115 = add nsw i64 %114, 8
  store i64 %115, i64* %50, align 8
  %116 = load i64, i64* %46, align 8
  %117 = add nsw i64 %116, 10
  store i64 %117, i64* %51, align 8
  %118 = load i64, i64* %46, align 8
  %119 = add nsw i64 %118, 12
  store i64 %119, i64* %52, align 8
  %120 = load i64, i64* %46, align 8
  %121 = add nsw i64 %120, 14
  store i64 %121, i64* %53, align 8
  %122 = load i32, i32* %21, align 4
  store i32 %122, i32* %30, align 4
  br label %123

123:                                              ; preds = %266, %13
  %124 = load i32, i32* %30, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %30, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %279

127:                                              ; preds = %123
  %128 = load i32*, i32** %14, align 8
  store i32* %128, i32** %27, align 8
  %129 = load i32*, i32** %18, align 8
  store i32* %129, i32** %28, align 8
  %130 = load i32*, i32** %16, align 8
  store i32* %130, i32** %29, align 8
  store i32 2, i32* %31, align 4
  br label %131

131:                                              ; preds = %135, %127
  %132 = load i32, i32* %31, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %31, align 4
  %134 = icmp ne i32 %132, 0
  br i1 %134, label %135, label %266

135:                                              ; preds = %131
  %136 = load i32*, i32** %27, align 8
  %137 = load i64, i64* %35, align 8
  %138 = load i64, i64* %36, align 8
  %139 = call i32 @LD_SB2(i32* %136, i32 16, i64 %137, i64 %138)
  %140 = load i32*, i32** %27, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 24
  %142 = call i64 @LD_SB(i32* %141)
  store i64 %142, i64* %37, align 8
  %143 = load i32*, i32** %27, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 32
  store i32* %144, i32** %27, align 8
  %145 = load i32*, i32** %29, align 8
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %39, align 4
  %148 = load i32, i32* %40, align 4
  %149 = load i32, i32* %41, align 4
  %150 = call i32 @LD_SH4(i32* %145, i32 8, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32*, i32** %29, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 32
  store i32* %152, i32** %29, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i64, i64* %37, align 8
  %156 = call i32 @XORI_B3_128_SB(i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %35, align 8
  %158 = load i64, i64* %35, align 8
  %159 = load i64, i64* %46, align 8
  %160 = load i64, i64* %47, align 8
  %161 = load i64, i64* %48, align 8
  %162 = load i64, i64* %49, align 8
  %163 = load i64, i64* %54, align 8
  %164 = load i64, i64* %55, align 8
  %165 = load i64, i64* %56, align 8
  %166 = load i64, i64* %57, align 8
  %167 = call i32 @VSHF_B4_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166)
  %168 = load i64, i64* %54, align 8
  %169 = load i64, i64* %55, align 8
  %170 = load i64, i64* %56, align 8
  %171 = load i64, i64* %57, align 8
  %172 = load i32, i32* %42, align 4
  %173 = load i32, i32* %43, align 4
  %174 = load i32, i32* %44, align 4
  %175 = load i32, i32* %45, align 4
  %176 = call i32 @HEVC_FILT_8TAP_SH(i64 %168, i64 %169, i64 %170, i64 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %58, align 4
  %177 = load i64, i64* %35, align 8
  %178 = load i64, i64* %36, align 8
  %179 = load i64, i64* %50, align 8
  %180 = load i64, i64* %51, align 8
  %181 = load i64, i64* %52, align 8
  %182 = load i64, i64* %53, align 8
  %183 = load i64, i64* %54, align 8
  %184 = load i64, i64* %55, align 8
  %185 = load i64, i64* %56, align 8
  %186 = load i64, i64* %57, align 8
  %187 = call i32 @VSHF_B4_SB(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %54, align 8
  %189 = load i64, i64* %55, align 8
  %190 = load i64, i64* %56, align 8
  %191 = load i64, i64* %57, align 8
  %192 = load i32, i32* %42, align 4
  %193 = load i32, i32* %43, align 4
  %194 = load i32, i32* %44, align 4
  %195 = load i32, i32* %45, align 4
  %196 = call i32 @HEVC_FILT_8TAP_SH(i64 %188, i64 %189, i64 %190, i64 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  store i32 %196, i32* %59, align 4
  %197 = load i64, i64* %36, align 8
  %198 = load i64, i64* %36, align 8
  %199 = load i64, i64* %46, align 8
  %200 = load i64, i64* %47, align 8
  %201 = load i64, i64* %48, align 8
  %202 = load i64, i64* %49, align 8
  %203 = load i64, i64* %54, align 8
  %204 = load i64, i64* %55, align 8
  %205 = load i64, i64* %56, align 8
  %206 = load i64, i64* %57, align 8
  %207 = call i32 @VSHF_B4_SB(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64, i64* %54, align 8
  %209 = load i64, i64* %55, align 8
  %210 = load i64, i64* %56, align 8
  %211 = load i64, i64* %57, align 8
  %212 = load i32, i32* %42, align 4
  %213 = load i32, i32* %43, align 4
  %214 = load i32, i32* %44, align 4
  %215 = load i32, i32* %45, align 4
  %216 = call i32 @HEVC_FILT_8TAP_SH(i64 %208, i64 %209, i64 %210, i64 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %60, align 4
  %217 = load i64, i64* %37, align 8
  %218 = load i64, i64* %37, align 8
  %219 = load i64, i64* %46, align 8
  %220 = load i64, i64* %47, align 8
  %221 = load i64, i64* %48, align 8
  %222 = load i64, i64* %49, align 8
  %223 = load i64, i64* %54, align 8
  %224 = load i64, i64* %55, align 8
  %225 = load i64, i64* %56, align 8
  %226 = load i64, i64* %57, align 8
  %227 = call i32 @VSHF_B4_SB(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %54, align 8
  %229 = load i64, i64* %55, align 8
  %230 = load i64, i64* %56, align 8
  %231 = load i64, i64* %57, align 8
  %232 = load i32, i32* %42, align 4
  %233 = load i32, i32* %43, align 4
  %234 = load i32, i32* %44, align 4
  %235 = load i32, i32* %45, align 4
  %236 = call i32 @HEVC_FILT_8TAP_SH(i64 %228, i64 %229, i64 %230, i64 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %61, align 4
  %237 = load i32, i32* %58, align 4
  %238 = load i32, i32* %59, align 4
  %239 = load i32, i32* %60, align 4
  %240 = load i32, i32* %61, align 4
  %241 = load i32, i32* %38, align 4
  %242 = load i32, i32* %39, align 4
  %243 = load i32, i32* %40, align 4
  %244 = load i32, i32* %41, align 4
  %245 = load i32, i32* %67, align 4
  %246 = load i32, i32* %69, align 4
  %247 = load i32, i32* %68, align 4
  %248 = load i32, i32* %63, align 4
  %249 = load i32, i32* %64, align 4
  %250 = load i32, i32* %65, align 4
  %251 = load i32, i32* %66, align 4
  %252 = call i32 @HEVC_BIW_RND_CLIP4(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* %64, align 4
  %254 = load i32, i32* %63, align 4
  %255 = load i32, i32* %66, align 4
  %256 = load i32, i32* %65, align 4
  %257 = load i32, i32* %63, align 4
  %258 = load i32, i32* %64, align 4
  %259 = call i32 @PCKEV_B2_SH(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %63, align 4
  %261 = load i32, i32* %64, align 4
  %262 = load i32*, i32** %28, align 8
  %263 = call i32 @ST_SH2(i32 %260, i32 %261, i32* %262, i32 16)
  %264 = load i32*, i32** %28, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 32
  store i32* %265, i32** %28, align 8
  br label %131

266:                                              ; preds = %131
  %267 = load i32, i32* %15, align 4
  %268 = load i32*, i32** %14, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %14, align 8
  %271 = load i32, i32* %17, align 4
  %272 = load i32*, i32** %16, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32* %274, i32** %16, align 8
  %275 = load i32, i32* %19, align 4
  %276 = load i32*, i32** %18, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %18, align 8
  br label %123

279:                                              ; preds = %123
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
