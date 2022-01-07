; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %47 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i64 @LD_SB(i32* %48)
  store i64 %49, i64* %46, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 -3
  store i32* %51, i32** %9, align 8
  %52 = call i32 @__msa_ldi_h(i32 128)
  store i32 %52, i32* %45, align 4
  %53 = load i32, i32* %45, align 4
  %54 = shl i32 %53, 6
  store i32 %54, i32* %45, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %44, align 4
  %57 = load i32, i32* %44, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %24, align 4
  %60 = load i32, i32* %25, align 4
  %61 = load i32, i32* %26, align 4
  %62 = call i32 @SPLATI_H4_SH(i32 %57, i32 0, i32 1, i32 2, i32 3, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* %46, align 8
  %64 = add nsw i64 %63, 2
  store i64 %64, i64* %27, align 8
  %65 = load i64, i64* %46, align 8
  %66 = add nsw i64 %65, 4
  store i64 %66, i64* %28, align 8
  %67 = load i64, i64* %46, align 8
  %68 = add nsw i64 %67, 6
  store i64 %68, i64* %29, align 8
  %69 = load i64, i64* %46, align 8
  %70 = add nsw i64 %69, 8
  store i64 %70, i64* %30, align 8
  %71 = load i64, i64* %46, align 8
  %72 = add nsw i64 %71, 10
  store i64 %72, i64* %31, align 8
  %73 = load i64, i64* %46, align 8
  %74 = add nsw i64 %73, 12
  store i64 %74, i64* %32, align 8
  %75 = load i64, i64* %46, align 8
  %76 = add nsw i64 %75, 14
  store i64 %76, i64* %33, align 8
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %82, %8
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %17, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %236

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @LD_SB2(i32* %83, i32 16, i64 %84, i64 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %41, align 4
  %93 = load i32, i32* %42, align 4
  %94 = call i32 @LD_SH2(i32* %91, i32 8, i32 %92, i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 16
  %97 = call i32 @LD_SH(i32* %96)
  store i32 %97, i32* %43, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %11, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %20, align 8
  %104 = call i32 @XORI_B2_128_SB(i64 %102, i64 %103)
  %105 = load i32, i32* %45, align 4
  store i32 %105, i32* %38, align 4
  %106 = load i32, i32* %45, align 4
  store i32 %106, i32* %39, align 4
  %107 = load i32, i32* %45, align 4
  store i32 %107, i32* %40, align 4
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %20, align 8
  %112 = load i64, i64* %46, align 8
  %113 = load i64, i64* %30, align 8
  %114 = load i64, i64* %34, align 8
  %115 = load i64, i64* %35, align 8
  %116 = call i32 @VSHF_B2_SB(i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* %20, align 8
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %46, align 8
  %122 = load i64, i64* %27, align 8
  %123 = load i64, i64* %36, align 8
  %124 = load i64, i64* %37, align 8
  %125 = call i32 @VSHF_B2_SB(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %34, align 8
  %127 = load i64, i64* %35, align 8
  %128 = load i64, i64* %36, align 8
  %129 = load i64, i64* %37, align 8
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %38, align 4
  %135 = load i32, i32* %39, align 4
  %136 = load i32, i32* %40, align 4
  %137 = load i32, i32* %38, align 4
  %138 = call i32 @DPADD_SB4_SH(i64 %126, i64 %127, i64 %128, i64 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* %31, align 8
  %144 = load i64, i64* %27, align 8
  %145 = load i64, i64* %34, align 8
  %146 = load i64, i64* %35, align 8
  %147 = call i32 @VSHF_B2_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* %19, align 8
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* %28, align 8
  %153 = load i64, i64* %32, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i64, i64* %37, align 8
  %156 = call i32 @VSHF_B2_SB(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %34, align 8
  %158 = load i64, i64* %35, align 8
  %159 = load i64, i64* %36, align 8
  %160 = load i64, i64* %37, align 8
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %39, align 4
  %166 = load i32, i32* %40, align 4
  %167 = load i32, i32* %38, align 4
  %168 = load i32, i32* %39, align 4
  %169 = call i32 @DPADD_SB4_SH(i64 %157, i64 %158, i64 %159, i64 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = load i64, i64* %20, align 8
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %19, align 8
  %174 = load i64, i64* %28, align 8
  %175 = load i64, i64* %29, align 8
  %176 = load i64, i64* %34, align 8
  %177 = load i64, i64* %35, align 8
  %178 = call i32 @VSHF_B2_SB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %20, align 8
  %181 = load i64, i64* %20, align 8
  %182 = load i64, i64* %20, align 8
  %183 = load i64, i64* %33, align 8
  %184 = load i64, i64* %29, align 8
  %185 = load i64, i64* %36, align 8
  %186 = load i64, i64* %37, align 8
  %187 = call i32 @VSHF_B2_SB(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %34, align 8
  %189 = load i64, i64* %35, align 8
  %190 = load i64, i64* %36, align 8
  %191 = load i64, i64* %37, align 8
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* %26, align 4
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %40, align 4
  %197 = load i32, i32* %38, align 4
  %198 = load i32, i32* %39, align 4
  %199 = load i32, i32* %40, align 4
  %200 = call i32 @DPADD_SB4_SH(i64 %188, i64 %189, i64 %190, i64 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %41, align 4
  %202 = load i32, i32* %42, align 4
  %203 = load i32, i32* %38, align 4
  %204 = load i32, i32* %39, align 4
  %205 = load i32, i32* %38, align 4
  %206 = load i32, i32* %39, align 4
  %207 = call i32 @HEVC_BI_RND_CLIP2(i32 %201, i32 %202, i32 %203, i32 %204, i32 7, i32 %205, i32 %206)
  %208 = load i32, i32* %40, align 4
  %209 = load i32, i32* %43, align 4
  %210 = call i32 @__msa_adds_s_h(i32 %208, i32 %209)
  store i32 %210, i32* %40, align 4
  %211 = load i32, i32* %40, align 4
  %212 = call i32 @__msa_srari_h(i32 %211, i32 7)
  store i32 %212, i32* %40, align 4
  %213 = load i32, i32* %40, align 4
  %214 = call i32 @CLIP_SH_0_255(i32 %213)
  %215 = load i32, i32* %39, align 4
  %216 = load i32, i32* %38, align 4
  %217 = load i32, i32* %40, align 4
  %218 = load i32, i32* %40, align 4
  %219 = load i64, i64* %21, align 8
  %220 = load i64, i64* %22, align 8
  %221 = call i32 @PCKEV_B2_SB(i32 %215, i32 %216, i32 %217, i32 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %22, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @__msa_copy_u_d(i32 %223, i32 0)
  store i32 %224, i32* %18, align 4
  %225 = load i64, i64* %21, align 8
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @ST_SB(i64 %225, i32* %226)
  %228 = load i32, i32* %18, align 4
  %229 = load i32*, i32** %13, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 16
  %231 = call i32 @SD(i32 %228, i32* %230)
  %232 = load i32, i32* %14, align 4
  %233 = load i32*, i32** %13, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %13, align 8
  br label %78

236:                                              ; preds = %78
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @CLIP_SH_0_255(i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @ST_SB(i64, i32*) #1

declare dso_local i32 @SD(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
