; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_8t_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_8t_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
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
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 -3
  store i32* %67, i32** %10, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @__msa_fill_w(i32 %68)
  store i32 %69, i32* %64, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @__msa_fill_w(i32 %70)
  store i32 %71, i32* %65, align 4
  %72 = load i32, i32* %16, align 4
  %73 = mul nsw i32 %72, 128
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sub nsw i32 %74, 6
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @__msa_fill_h(i32 %76)
  store i32 %77, i32* %61, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @__msa_fill_h(i32 %78)
  store i32 %79, i32* %62, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @__msa_fill_h(i32 %80)
  store i32 %81, i32* %63, align 4
  %82 = load i32, i32* %61, align 4
  %83 = load i32, i32* %63, align 4
  %84 = call i32 @__msa_srar_h(i32 %82, i32 %83)
  store i32 %84, i32* %61, align 4
  %85 = load i32, i32* %62, align 4
  %86 = load i32, i32* %61, align 4
  %87 = call i32 @__msa_adds_s_h(i32 %85, i32 %86)
  store i32 %87, i32* %62, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @LD_SH(i32* %88)
  store i32 %89, i32* %60, align 4
  %90 = load i32, i32* %60, align 4
  %91 = load i32, i32* %28, align 4
  %92 = load i32, i32* %29, align 4
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %31, align 4
  %95 = call i32 @SPLATI_H4_SH(i32 %90, i32 0, i32 1, i32 2, i32 3, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = call i64 @LD_SB(i32* %97)
  store i64 %98, i64* %32, align 8
  %99 = load i64, i64* %32, align 8
  %100 = add nsw i64 %99, 2
  store i64 %100, i64* %33, align 8
  %101 = load i64, i64* %32, align 8
  %102 = add nsw i64 %101, 4
  store i64 %102, i64* %34, align 8
  %103 = load i64, i64* %32, align 8
  %104 = add nsw i64 %103, 6
  store i64 %104, i64* %35, align 8
  %105 = load i64, i64* %32, align 8
  %106 = add nsw i64 %105, 8
  store i64 %106, i64* %36, align 8
  %107 = load i64, i64* %32, align 8
  %108 = add nsw i64 %107, 10
  store i64 %108, i64* %37, align 8
  %109 = load i64, i64* %32, align 8
  %110 = add nsw i64 %109, 12
  store i64 %110, i64* %38, align 8
  %111 = load i64, i64* %32, align 8
  %112 = add nsw i64 %111, 14
  store i64 %112, i64* %39, align 8
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %244, %9
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %21, align 4
  %117 = icmp ne i32 %115, 0
  br i1 %117, label %118, label %253

118:                                              ; preds = %114
  %119 = load i32*, i32** %10, align 8
  store i32* %119, i32** %19, align 8
  %120 = load i32*, i32** %12, align 8
  store i32* %120, i32** %20, align 8
  store i32 2, i32* %22, align 4
  br label %121

121:                                              ; preds = %125, %118
  %122 = load i32, i32* %22, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %22, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %244

125:                                              ; preds = %121
  %126 = load i32*, i32** %19, align 8
  %127 = load i64, i64* %25, align 8
  %128 = load i64, i64* %26, align 8
  %129 = call i32 @LD_SB2(i32* %126, i32 16, i64 %127, i64 %128)
  %130 = load i32*, i32** %19, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 24
  %132 = call i64 @LD_SB(i32* %131)
  store i64 %132, i64* %27, align 8
  %133 = load i32*, i32** %19, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 32
  store i32* %134, i32** %19, align 8
  %135 = load i64, i64* %25, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %27, align 8
  %138 = call i32 @XORI_B3_128_SB(i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %25, align 8
  %141 = load i64, i64* %32, align 8
  %142 = load i64, i64* %33, align 8
  %143 = load i64, i64* %34, align 8
  %144 = load i64, i64* %35, align 8
  %145 = load i64, i64* %40, align 8
  %146 = load i64, i64* %41, align 8
  %147 = load i64, i64* %42, align 8
  %148 = load i64, i64* %43, align 8
  %149 = call i32 @VSHF_B4_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %25, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %36, align 8
  %153 = load i64, i64* %37, align 8
  %154 = load i64, i64* %38, align 8
  %155 = load i64, i64* %39, align 8
  %156 = load i64, i64* %44, align 8
  %157 = load i64, i64* %45, align 8
  %158 = load i64, i64* %46, align 8
  %159 = load i64, i64* %47, align 8
  %160 = call i32 @VSHF_B4_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %26, align 8
  %162 = load i64, i64* %26, align 8
  %163 = load i64, i64* %32, align 8
  %164 = load i64, i64* %33, align 8
  %165 = load i64, i64* %34, align 8
  %166 = load i64, i64* %35, align 8
  %167 = load i64, i64* %48, align 8
  %168 = load i64, i64* %49, align 8
  %169 = load i64, i64* %50, align 8
  %170 = load i64, i64* %51, align 8
  %171 = call i32 @VSHF_B4_SB(i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %32, align 8
  %175 = load i64, i64* %33, align 8
  %176 = load i64, i64* %34, align 8
  %177 = load i64, i64* %35, align 8
  %178 = load i64, i64* %52, align 8
  %179 = load i64, i64* %53, align 8
  %180 = load i64, i64* %54, align 8
  %181 = load i64, i64* %55, align 8
  %182 = call i32 @VSHF_B4_SB(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i64, i64* %40, align 8
  %184 = load i64, i64* %41, align 8
  %185 = load i64, i64* %42, align 8
  %186 = load i64, i64* %43, align 8
  %187 = load i32, i32* %28, align 4
  %188 = load i32, i32* %29, align 4
  %189 = load i32, i32* %30, align 4
  %190 = load i32, i32* %31, align 4
  %191 = call i32 @HEVC_FILT_8TAP_SH(i64 %183, i64 %184, i64 %185, i64 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  store i32 %191, i32* %56, align 4
  %192 = load i64, i64* %44, align 8
  %193 = load i64, i64* %45, align 8
  %194 = load i64, i64* %46, align 8
  %195 = load i64, i64* %47, align 8
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %29, align 4
  %198 = load i32, i32* %30, align 4
  %199 = load i32, i32* %31, align 4
  %200 = call i32 @HEVC_FILT_8TAP_SH(i64 %192, i64 %193, i64 %194, i64 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %57, align 4
  %201 = load i64, i64* %48, align 8
  %202 = load i64, i64* %49, align 8
  %203 = load i64, i64* %50, align 8
  %204 = load i64, i64* %51, align 8
  %205 = load i32, i32* %28, align 4
  %206 = load i32, i32* %29, align 4
  %207 = load i32, i32* %30, align 4
  %208 = load i32, i32* %31, align 4
  %209 = call i32 @HEVC_FILT_8TAP_SH(i64 %201, i64 %202, i64 %203, i64 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %58, align 4
  %210 = load i64, i64* %52, align 8
  %211 = load i64, i64* %53, align 8
  %212 = load i64, i64* %54, align 8
  %213 = load i64, i64* %55, align 8
  %214 = load i32, i32* %28, align 4
  %215 = load i32, i32* %29, align 4
  %216 = load i32, i32* %30, align 4
  %217 = load i32, i32* %31, align 4
  %218 = call i32 @HEVC_FILT_8TAP_SH(i64 %210, i64 %211, i64 %212, i64 %213, i32 %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %59, align 4
  %219 = load i32, i32* %56, align 4
  %220 = load i32, i32* %57, align 4
  %221 = load i32, i32* %58, align 4
  %222 = load i32, i32* %59, align 4
  %223 = load i32, i32* %64, align 4
  %224 = load i32, i32* %62, align 4
  %225 = load i32, i32* %65, align 4
  %226 = load i32, i32* %56, align 4
  %227 = load i32, i32* %57, align 4
  %228 = load i32, i32* %58, align 4
  %229 = load i32, i32* %59, align 4
  %230 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %57, align 4
  %232 = load i32, i32* %56, align 4
  %233 = load i32, i32* %59, align 4
  %234 = load i32, i32* %58, align 4
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %24, align 4
  %237 = call i32 @PCKEV_B2_UB(i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %23, align 4
  %239 = load i32, i32* %24, align 4
  %240 = load i32*, i32** %20, align 8
  %241 = call i32 @ST_UB2(i32 %238, i32 %239, i32* %240, i32 16)
  %242 = load i32*, i32** %20, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 32
  store i32* %243, i32** %20, align 8
  br label %121

244:                                              ; preds = %121
  %245 = load i32, i32* %11, align 4
  %246 = load i32*, i32** %10, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32* %248, i32** %10, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load i32*, i32** %12, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %12, align 8
  br label %114

253:                                              ; preds = %114
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
