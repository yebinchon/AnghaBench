; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
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
  %43 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %44 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i64 @LD_SB(i32* %45)
  store i64 %46, i64* %43, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -3
  store i32* %48, i32** %9, align 8
  %49 = call i32 @__msa_ldi_h(i32 128)
  store i32 %49, i32* %42, align 4
  %50 = load i32, i32* %42, align 4
  %51 = shl i32 %50, 6
  store i32 %51, i32* %42, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @LD_SH(i32* %52)
  store i32 %53, i32* %41, align 4
  %54 = load i32, i32* %41, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %24, align 4
  %58 = load i32, i32* %25, align 4
  %59 = call i32 @SPLATI_H4_SH(i32 %54, i32 0, i32 1, i32 2, i32 3, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i64, i64* %43, align 8
  %61 = add nsw i64 %60, 2
  store i64 %61, i64* %26, align 8
  %62 = load i64, i64* %43, align 8
  %63 = add nsw i64 %62, 4
  store i64 %63, i64* %27, align 8
  %64 = load i64, i64* %43, align 8
  %65 = add nsw i64 %64, 6
  store i64 %65, i64* %28, align 8
  %66 = load i32, i32* %16, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %72, %8
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %17, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %268

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %19, align 8
  %76 = call i32 @LD_SB2(i32* %73, i32 8, i64 %74, i64 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i64, i64* %20, align 8
  %83 = load i64, i64* %21, align 8
  %84 = call i32 @LD_SB2(i32* %81, i32 8, i64 %82, i64 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %37, align 4
  %91 = load i32, i32* %38, align 4
  %92 = call i32 @LD_SH2(i32* %89, i32 8, i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %11, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %39, align 4
  %99 = load i32, i32* %40, align 4
  %100 = call i32 @LD_SH2(i32* %97, i32 8, i32 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %11, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %21, align 8
  %109 = call i32 @XORI_B4_128_SB(i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %42, align 4
  store i32 %110, i32* %33, align 4
  %111 = load i32, i32* %42, align 4
  store i32 %111, i32* %34, align 4
  %112 = load i32, i32* %42, align 4
  store i32 %112, i32* %35, align 4
  %113 = load i32, i32* %42, align 4
  store i32 %113, i32* %36, align 4
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* %19, align 8
  %118 = load i64, i64* %43, align 8
  %119 = load i64, i64* %43, align 8
  %120 = load i64, i64* %29, align 8
  %121 = load i64, i64* %30, align 8
  %122 = call i32 @VSHF_B2_SB(i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %21, align 8
  %127 = load i64, i64* %43, align 8
  %128 = load i64, i64* %43, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %32, align 8
  %131 = call i32 @VSHF_B2_SB(i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i64, i64* %29, align 8
  %133 = load i64, i64* %30, align 8
  %134 = load i64, i64* %31, align 8
  %135 = load i64, i64* %32, align 8
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %33, align 4
  %141 = load i32, i32* %34, align 4
  %142 = load i32, i32* %35, align 4
  %143 = load i32, i32* %36, align 4
  %144 = call i32 @DPADD_SB4_SH(i64 %132, i64 %133, i64 %134, i64 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %26, align 8
  %150 = load i64, i64* %26, align 8
  %151 = load i64, i64* %29, align 8
  %152 = load i64, i64* %30, align 8
  %153 = call i32 @VSHF_B2_SB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* %20, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* %21, align 8
  %158 = load i64, i64* %26, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %32, align 8
  %162 = call i32 @VSHF_B2_SB(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %29, align 8
  %164 = load i64, i64* %30, align 8
  %165 = load i64, i64* %31, align 8
  %166 = load i64, i64* %32, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %33, align 4
  %172 = load i32, i32* %34, align 4
  %173 = load i32, i32* %35, align 4
  %174 = load i32, i32* %36, align 4
  %175 = call i32 @DPADD_SB4_SH(i64 %163, i64 %164, i64 %165, i64 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i64, i64* %18, align 8
  %177 = load i64, i64* %18, align 8
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %27, align 8
  %181 = load i64, i64* %27, align 8
  %182 = load i64, i64* %29, align 8
  %183 = load i64, i64* %30, align 8
  %184 = call i32 @VSHF_B2_SB(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %20, align 8
  %186 = load i64, i64* %20, align 8
  %187 = load i64, i64* %21, align 8
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* %27, align 8
  %190 = load i64, i64* %27, align 8
  %191 = load i64, i64* %31, align 8
  %192 = load i64, i64* %32, align 8
  %193 = call i32 @VSHF_B2_SB(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %29, align 8
  %195 = load i64, i64* %30, align 8
  %196 = load i64, i64* %31, align 8
  %197 = load i64, i64* %32, align 8
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %33, align 4
  %203 = load i32, i32* %34, align 4
  %204 = load i32, i32* %35, align 4
  %205 = load i32, i32* %36, align 4
  %206 = call i32 @DPADD_SB4_SH(i64 %194, i64 %195, i64 %196, i64 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i64, i64* %18, align 8
  %208 = load i64, i64* %18, align 8
  %209 = load i64, i64* %19, align 8
  %210 = load i64, i64* %19, align 8
  %211 = load i64, i64* %28, align 8
  %212 = load i64, i64* %28, align 8
  %213 = load i64, i64* %29, align 8
  %214 = load i64, i64* %30, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %20, align 8
  %217 = load i64, i64* %20, align 8
  %218 = load i64, i64* %21, align 8
  %219 = load i64, i64* %21, align 8
  %220 = load i64, i64* %28, align 8
  %221 = load i64, i64* %28, align 8
  %222 = load i64, i64* %31, align 8
  %223 = load i64, i64* %32, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %29, align 8
  %226 = load i64, i64* %30, align 8
  %227 = load i64, i64* %31, align 8
  %228 = load i64, i64* %32, align 8
  %229 = load i32, i32* %25, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* %33, align 4
  %234 = load i32, i32* %34, align 4
  %235 = load i32, i32* %35, align 4
  %236 = load i32, i32* %36, align 4
  %237 = call i32 @DPADD_SB4_SH(i64 %225, i64 %226, i64 %227, i64 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %37, align 4
  %239 = load i32, i32* %38, align 4
  %240 = load i32, i32* %39, align 4
  %241 = load i32, i32* %40, align 4
  %242 = load i32, i32* %33, align 4
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %35, align 4
  %245 = load i32, i32* %36, align 4
  %246 = load i32, i32* %33, align 4
  %247 = load i32, i32* %34, align 4
  %248 = load i32, i32* %35, align 4
  %249 = load i32, i32* %36, align 4
  %250 = call i32 @HEVC_BI_RND_CLIP4(i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 7, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %34, align 4
  %252 = load i32, i32* %33, align 4
  %253 = load i32, i32* %36, align 4
  %254 = load i32, i32* %35, align 4
  %255 = load i32, i32* %33, align 4
  %256 = load i32, i32* %34, align 4
  %257 = call i32 @PCKEV_B2_SH(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %34, align 4
  %260 = load i32*, i32** %13, align 8
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @ST_SH2(i32 %258, i32 %259, i32* %260, i32 %261)
  %263 = load i32, i32* %14, align 4
  %264 = mul nsw i32 2, %263
  %265 = load i32*, i32** %13, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32* %267, i32** %13, align 8
  br label %68

268:                                              ; preds = %68
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
