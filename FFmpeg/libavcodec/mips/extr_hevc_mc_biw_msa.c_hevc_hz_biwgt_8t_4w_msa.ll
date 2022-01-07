; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
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
  %54 = alloca i64, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i64, align 8
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
  %59 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 16
  %61 = call i64 @LD_SB(i32* %60)
  store i64 %61, i64* %58, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -3
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = call i64 @LD_SH(i32* %64)
  store i64 %65, i64* %52, align 8
  %66 = load i64, i64* %52, align 8
  %67 = load i64, i64* %31, align 8
  %68 = load i64, i64* %32, align 8
  %69 = load i64, i64* %33, align 8
  %70 = load i64, i64* %34, align 8
  %71 = call i32 @SPLATI_H4_SH(i64 %66, i32 0, i32 1, i32 2, i32 3, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i64, i64* %58, align 8
  %73 = add nsw i64 %72, 2
  store i64 %73, i64* %39, align 8
  %74 = load i64, i64* %58, align 8
  %75 = add nsw i64 %74, 4
  store i64 %75, i64* %40, align 8
  %76 = load i64, i64* %58, align 8
  %77 = add nsw i64 %76, 6
  store i64 %77, i64* %41, align 8
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %25, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %26, align 4
  %82 = shl i32 %80, %81
  store i32 %82, i32* %28, align 4
  %83 = load i32, i32* %22, align 4
  %84 = and i32 %83, 65535
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %85, %87
  store i32 %88, i32* %29, align 4
  %89 = load i32, i32* %23, align 4
  %90 = mul nsw i32 128, %89
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %30, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %30, align 4
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %28, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %28, align 4
  %96 = load i32, i32* %28, align 4
  %97 = call i32 @__msa_fill_w(i32 %96)
  store i32 %97, i32* %56, align 4
  %98 = load i32, i32* %29, align 4
  %99 = call i32 @__msa_fill_w(i32 %98)
  store i32 %99, i32* %55, align 4
  %100 = load i32, i32* %26, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @__msa_fill_w(i32 %101)
  store i32 %102, i32* %57, align 4
  %103 = load i32, i32* %21, align 4
  %104 = ashr i32 %103, 2
  store i32 %104, i32* %27, align 4
  br label %105

105:                                              ; preds = %109, %13
  %106 = load i32, i32* %27, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %27, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %208

109:                                              ; preds = %105
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i64, i64* %35, align 8
  %113 = load i64, i64* %36, align 8
  %114 = load i64, i64* %37, align 8
  %115 = load i64, i64* %38, align 8
  %116 = call i32 @LD_SB4(i32* %110, i32 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i32, i32* %15, align 4
  %118 = mul nsw i32 4, %117
  %119 = load i32*, i32** %14, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %14, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i64, i64* %48, align 8
  %125 = load i64, i64* %49, align 8
  %126 = load i64, i64* %50, align 8
  %127 = load i64, i64* %51, align 8
  %128 = call i32 @LD_SH4(i32* %122, i32 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i32, i32* %17, align 4
  %130 = mul nsw i32 4, %129
  %131 = load i32*, i32** %16, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %16, align 8
  %134 = load i64, i64* %49, align 8
  %135 = load i64, i64* %48, align 8
  %136 = load i64, i64* %51, align 8
  %137 = load i64, i64* %50, align 8
  %138 = load i64, i64* %48, align 8
  %139 = load i64, i64* %49, align 8
  %140 = call i32 @ILVR_D2_SH(i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139)
  %141 = load i64, i64* %35, align 8
  %142 = load i64, i64* %36, align 8
  %143 = load i64, i64* %37, align 8
  %144 = load i64, i64* %38, align 8
  %145 = call i32 @XORI_B4_128_SB(i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %35, align 8
  %147 = load i64, i64* %36, align 8
  %148 = load i64, i64* %58, align 8
  %149 = load i64, i64* %39, align 8
  %150 = load i64, i64* %40, align 8
  %151 = load i64, i64* %41, align 8
  %152 = load i64, i64* %42, align 8
  %153 = load i64, i64* %43, align 8
  %154 = load i64, i64* %44, align 8
  %155 = load i64, i64* %45, align 8
  %156 = call i32 @VSHF_B4_SB(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %42, align 8
  %158 = load i64, i64* %43, align 8
  %159 = load i64, i64* %44, align 8
  %160 = load i64, i64* %45, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %32, align 8
  %163 = load i64, i64* %33, align 8
  %164 = load i64, i64* %34, align 8
  %165 = call i64 @HEVC_FILT_8TAP_SH(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  store i64 %165, i64* %46, align 8
  %166 = load i64, i64* %37, align 8
  %167 = load i64, i64* %38, align 8
  %168 = load i64, i64* %58, align 8
  %169 = load i64, i64* %39, align 8
  %170 = load i64, i64* %40, align 8
  %171 = load i64, i64* %41, align 8
  %172 = load i64, i64* %42, align 8
  %173 = load i64, i64* %43, align 8
  %174 = load i64, i64* %44, align 8
  %175 = load i64, i64* %45, align 8
  %176 = call i32 @VSHF_B4_SB(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %42, align 8
  %178 = load i64, i64* %43, align 8
  %179 = load i64, i64* %44, align 8
  %180 = load i64, i64* %45, align 8
  %181 = load i64, i64* %31, align 8
  %182 = load i64, i64* %32, align 8
  %183 = load i64, i64* %33, align 8
  %184 = load i64, i64* %34, align 8
  %185 = call i64 @HEVC_FILT_8TAP_SH(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  store i64 %185, i64* %47, align 8
  %186 = load i64, i64* %46, align 8
  %187 = load i64, i64* %47, align 8
  %188 = load i64, i64* %48, align 8
  %189 = load i64, i64* %49, align 8
  %190 = load i32, i32* %55, align 4
  %191 = load i32, i32* %57, align 4
  %192 = load i32, i32* %56, align 4
  %193 = load i64, i64* %53, align 8
  %194 = load i64, i64* %54, align 8
  %195 = call i32 @HEVC_BIW_RND_CLIP2(i64 %186, i64 %187, i64 %188, i64 %189, i32 %190, i32 %191, i32 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %54, align 8
  %197 = load i64, i64* %53, align 8
  %198 = call i64 @__msa_pckev_b(i64 %196, i64 %197)
  store i64 %198, i64* %53, align 8
  %199 = load i64, i64* %53, align 8
  %200 = load i32*, i32** %18, align 8
  %201 = load i32, i32* %19, align 4
  %202 = call i32 @ST_W4(i64 %199, i32 0, i32 1, i32 2, i32 3, i32* %200, i32 %201)
  %203 = load i32, i32* %19, align 4
  %204 = mul nsw i32 4, %203
  %205 = load i32*, i32** %18, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %18, align 8
  br label %105

208:                                              ; preds = %105
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
