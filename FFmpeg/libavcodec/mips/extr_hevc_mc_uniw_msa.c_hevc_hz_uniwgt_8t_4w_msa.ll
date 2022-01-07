; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -3
  store i32* %69, i32** %10, align 8
  %70 = load i32, i32* %16, align 4
  %71 = and i32 %70, 65535
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @__msa_fill_w(i32 %72)
  store i32 %73, i32* %66, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @__msa_fill_w(i32 %74)
  store i32 %75, i32* %67, align 4
  %76 = load i32, i32* %16, align 4
  %77 = mul nsw i32 %76, 128
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %78, 6
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @__msa_fill_h(i32 %80)
  store i32 %81, i32* %63, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @__msa_fill_h(i32 %82)
  store i32 %83, i32* %64, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @__msa_fill_h(i32 %84)
  store i32 %85, i32* %65, align 4
  %86 = load i32, i32* %63, align 4
  %87 = load i32, i32* %65, align 4
  %88 = call i32 @__msa_srar_h(i32 %86, i32 %87)
  store i32 %88, i32* %63, align 4
  %89 = load i32, i32* %64, align 4
  %90 = load i32, i32* %63, align 4
  %91 = call i32 @__msa_adds_s_h(i32 %89, i32 %90)
  store i32 %91, i32* %64, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @LD_SH(i32* %92)
  store i32 %93, i32* %54, align 4
  %94 = load i32, i32* %54, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %25, align 4
  %99 = call i32 @SPLATI_H4_SH(i32 %94, i32 0, i32 1, i32 2, i32 3, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 16
  %102 = call i64 @LD_SB(i32* %101)
  store i64 %102, i64* %45, align 8
  %103 = load i64, i64* %45, align 8
  %104 = add nsw i64 %103, 2
  store i64 %104, i64* %46, align 8
  %105 = load i64, i64* %45, align 8
  %106 = add nsw i64 %105, 4
  store i64 %106, i64* %47, align 8
  %107 = load i64, i64* %45, align 8
  %108 = add nsw i64 %107, 6
  store i64 %108, i64* %48, align 8
  %109 = load i32, i32* %15, align 4
  %110 = ashr i32 %109, 3
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %115, %9
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %19, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %250

115:                                              ; preds = %111
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i64, i64* %26, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %28, align 8
  %121 = load i64, i64* %29, align 8
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %31, align 8
  %124 = load i64, i64* %32, align 8
  %125 = load i64, i64* %33, align 8
  %126 = call i32 @LD_SB8(i32* %116, i32 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 8, %127
  %129 = load i32*, i32** %10, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %10, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %27, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i64, i64* %29, align 8
  %136 = load i64, i64* %30, align 8
  %137 = load i64, i64* %31, align 8
  %138 = load i64, i64* %32, align 8
  %139 = load i64, i64* %33, align 8
  %140 = call i32 @XORI_B8_128_SB(i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  %141 = load i64, i64* %26, align 8
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* %45, align 8
  %144 = load i64, i64* %46, align 8
  %145 = load i64, i64* %47, align 8
  %146 = load i64, i64* %48, align 8
  %147 = load i64, i64* %34, align 8
  %148 = load i64, i64* %35, align 8
  %149 = load i64, i64* %36, align 8
  %150 = load i64, i64* %37, align 8
  %151 = call i32 @VSHF_B4_SB(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %28, align 8
  %153 = load i64, i64* %29, align 8
  %154 = load i64, i64* %45, align 8
  %155 = load i64, i64* %46, align 8
  %156 = load i64, i64* %47, align 8
  %157 = load i64, i64* %48, align 8
  %158 = load i64, i64* %38, align 8
  %159 = load i64, i64* %39, align 8
  %160 = load i64, i64* %40, align 8
  %161 = load i64, i64* %41, align 8
  %162 = call i32 @VSHF_B4_SB(i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %30, align 8
  %164 = load i64, i64* %31, align 8
  %165 = load i64, i64* %45, align 8
  %166 = load i64, i64* %46, align 8
  %167 = load i64, i64* %47, align 8
  %168 = load i64, i64* %48, align 8
  %169 = load i64, i64* %42, align 8
  %170 = load i64, i64* %43, align 8
  %171 = load i64, i64* %44, align 8
  %172 = load i64, i64* %49, align 8
  %173 = call i32 @VSHF_B4_SB(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i64, i64* %32, align 8
  %175 = load i64, i64* %33, align 8
  %176 = load i64, i64* %45, align 8
  %177 = load i64, i64* %46, align 8
  %178 = load i64, i64* %47, align 8
  %179 = load i64, i64* %48, align 8
  %180 = load i64, i64* %50, align 8
  %181 = load i64, i64* %51, align 8
  %182 = load i64, i64* %52, align 8
  %183 = load i64, i64* %53, align 8
  %184 = call i32 @VSHF_B4_SB(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %34, align 8
  %186 = load i64, i64* %35, align 8
  %187 = load i64, i64* %36, align 8
  %188 = load i64, i64* %37, align 8
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %25, align 4
  %193 = call i32 @HEVC_FILT_8TAP_SH(i64 %185, i64 %186, i64 %187, i64 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %55, align 4
  %194 = load i64, i64* %38, align 8
  %195 = load i64, i64* %39, align 8
  %196 = load i64, i64* %40, align 8
  %197 = load i64, i64* %41, align 8
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %25, align 4
  %202 = call i32 @HEVC_FILT_8TAP_SH(i64 %194, i64 %195, i64 %196, i64 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %56, align 4
  %203 = load i64, i64* %42, align 8
  %204 = load i64, i64* %43, align 8
  %205 = load i64, i64* %44, align 8
  %206 = load i64, i64* %49, align 8
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %23, align 4
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %25, align 4
  %211 = call i32 @HEVC_FILT_8TAP_SH(i64 %203, i64 %204, i64 %205, i64 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  store i32 %211, i32* %57, align 4
  %212 = load i64, i64* %50, align 8
  %213 = load i64, i64* %51, align 8
  %214 = load i64, i64* %52, align 8
  %215 = load i64, i64* %53, align 8
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %24, align 4
  %219 = load i32, i32* %25, align 4
  %220 = call i32 @HEVC_FILT_8TAP_SH(i64 %212, i64 %213, i64 %214, i64 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %58, align 4
  %221 = load i32, i32* %55, align 4
  %222 = load i32, i32* %56, align 4
  %223 = load i32, i32* %57, align 4
  %224 = load i32, i32* %58, align 4
  %225 = load i32, i32* %66, align 4
  %226 = load i32, i32* %64, align 4
  %227 = load i32, i32* %67, align 4
  %228 = load i32, i32* %59, align 4
  %229 = load i32, i32* %60, align 4
  %230 = load i32, i32* %61, align 4
  %231 = load i32, i32* %62, align 4
  %232 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %60, align 4
  %234 = load i32, i32* %59, align 4
  %235 = load i32, i32* %62, align 4
  %236 = load i32, i32* %61, align 4
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %21, align 4
  %239 = call i32 @PCKEV_B2_UB(i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %20, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @ST_W8(i32 %240, i32 %241, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %242, i32 %243)
  %245 = load i32, i32* %13, align 4
  %246 = mul nsw i32 8, %245
  %247 = load i32*, i32** %12, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32* %249, i32** %12, align 8
  br label %111

250:                                              ; preds = %111
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
