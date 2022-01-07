; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
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
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -3
  store i32* %61, i32** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = and i32 %62, 65535
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @__msa_fill_w(i32 %64)
  store i32 %65, i32* %58, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @__msa_fill_w(i32 %66)
  store i32 %67, i32* %59, align 4
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 %68, 128
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %18, align 4
  %71 = sub nsw i32 %70, 6
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @__msa_fill_h(i32 %72)
  store i32 %73, i32* %55, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @__msa_fill_h(i32 %74)
  store i32 %75, i32* %56, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @__msa_fill_h(i32 %76)
  store i32 %77, i32* %57, align 4
  %78 = load i32, i32* %55, align 4
  %79 = load i32, i32* %57, align 4
  %80 = call i32 @__msa_srar_h(i32 %78, i32 %79)
  store i32 %80, i32* %55, align 4
  %81 = load i32, i32* %56, align 4
  %82 = load i32, i32* %55, align 4
  %83 = call i32 @__msa_adds_s_h(i32 %81, i32 %82)
  store i32 %83, i32* %56, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @LD_SH(i32* %84)
  store i32 %85, i32* %34, align 4
  %86 = load i32, i32* %34, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %28, align 4
  %90 = load i32, i32* %29, align 4
  %91 = call i32 @SPLATI_H4_SH(i32 %86, i32 0, i32 1, i32 2, i32 3, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i64 @LD_SB(i32* %93)
  store i64 %94, i64* %30, align 8
  %95 = load i64, i64* %30, align 8
  %96 = add nsw i64 %95, 2
  store i64 %96, i64* %31, align 8
  %97 = load i64, i64* %30, align 8
  %98 = add nsw i64 %97, 4
  store i64 %98, i64* %32, align 8
  %99 = load i64, i64* %30, align 8
  %100 = add nsw i64 %99, 6
  store i64 %100, i64* %33, align 8
  %101 = load i32, i32* %15, align 4
  %102 = ashr i32 %101, 2
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %107, %9
  %104 = load i32, i32* %19, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %19, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %234

107:                                              ; preds = %103
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %25, align 8
  %114 = call i32 @LD_SB4(i32* %108, i32 %109, i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 4, %115
  %117 = load i32*, i32** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %10, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* %25, align 8
  %124 = call i32 @XORI_B4_128_SB(i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %30, align 8
  %128 = load i64, i64* %31, align 8
  %129 = load i64, i64* %32, align 8
  %130 = load i64, i64* %33, align 8
  %131 = load i64, i64* %35, align 8
  %132 = load i64, i64* %36, align 8
  %133 = load i64, i64* %37, align 8
  %134 = load i64, i64* %38, align 8
  %135 = call i32 @VSHF_B4_SB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* %30, align 8
  %139 = load i64, i64* %31, align 8
  %140 = load i64, i64* %32, align 8
  %141 = load i64, i64* %33, align 8
  %142 = load i64, i64* %39, align 8
  %143 = load i64, i64* %40, align 8
  %144 = load i64, i64* %41, align 8
  %145 = load i64, i64* %42, align 8
  %146 = call i32 @VSHF_B4_SB(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %24, align 8
  %149 = load i64, i64* %30, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %32, align 8
  %152 = load i64, i64* %33, align 8
  %153 = load i64, i64* %43, align 8
  %154 = load i64, i64* %44, align 8
  %155 = load i64, i64* %45, align 8
  %156 = load i64, i64* %46, align 8
  %157 = call i32 @VSHF_B4_SB(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %30, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %32, align 8
  %163 = load i64, i64* %33, align 8
  %164 = load i64, i64* %47, align 8
  %165 = load i64, i64* %48, align 8
  %166 = load i64, i64* %49, align 8
  %167 = load i64, i64* %50, align 8
  %168 = call i32 @VSHF_B4_SB(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %35, align 8
  %170 = load i64, i64* %36, align 8
  %171 = load i64, i64* %37, align 8
  %172 = load i64, i64* %38, align 8
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %27, align 4
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %29, align 4
  %177 = call i32 @HEVC_FILT_8TAP_SH(i64 %169, i64 %170, i64 %171, i64 %172, i32 %173, i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %51, align 4
  %178 = load i64, i64* %39, align 8
  %179 = load i64, i64* %40, align 8
  %180 = load i64, i64* %41, align 8
  %181 = load i64, i64* %42, align 8
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %28, align 4
  %185 = load i32, i32* %29, align 4
  %186 = call i32 @HEVC_FILT_8TAP_SH(i64 %178, i64 %179, i64 %180, i64 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %52, align 4
  %187 = load i64, i64* %43, align 8
  %188 = load i64, i64* %44, align 8
  %189 = load i64, i64* %45, align 8
  %190 = load i64, i64* %46, align 8
  %191 = load i32, i32* %26, align 4
  %192 = load i32, i32* %27, align 4
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %29, align 4
  %195 = call i32 @HEVC_FILT_8TAP_SH(i64 %187, i64 %188, i64 %189, i64 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %53, align 4
  %196 = load i64, i64* %47, align 8
  %197 = load i64, i64* %48, align 8
  %198 = load i64, i64* %49, align 8
  %199 = load i64, i64* %50, align 8
  %200 = load i32, i32* %26, align 4
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* %28, align 4
  %203 = load i32, i32* %29, align 4
  %204 = call i32 @HEVC_FILT_8TAP_SH(i64 %196, i64 %197, i64 %198, i64 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %54, align 4
  %205 = load i32, i32* %51, align 4
  %206 = load i32, i32* %52, align 4
  %207 = load i32, i32* %53, align 4
  %208 = load i32, i32* %54, align 4
  %209 = load i32, i32* %58, align 4
  %210 = load i32, i32* %56, align 4
  %211 = load i32, i32* %59, align 4
  %212 = load i32, i32* %51, align 4
  %213 = load i32, i32* %52, align 4
  %214 = load i32, i32* %53, align 4
  %215 = load i32, i32* %54, align 4
  %216 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %52, align 4
  %218 = load i32, i32* %51, align 4
  %219 = load i32, i32* %54, align 4
  %220 = load i32, i32* %53, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %21, align 4
  %223 = call i32 @PCKEV_B2_UB(i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* %21, align 4
  %226 = load i32*, i32** %12, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @ST_D4(i32 %224, i32 %225, i32 0, i32 1, i32 0, i32 1, i32* %226, i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = mul nsw i32 4, %229
  %231 = load i32*, i32** %12, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %12, align 8
  br label %103

234:                                              ; preds = %103
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
