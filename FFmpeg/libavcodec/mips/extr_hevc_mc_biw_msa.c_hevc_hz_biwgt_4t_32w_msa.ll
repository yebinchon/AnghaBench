; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
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
  %54 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i64 @LD_SB(i32* %55)
  store i64 %56, i64* %36, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 -1
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @LD_SH(i32* %59)
  store i32 %60, i32* %50, align 4
  %61 = load i32, i32* %50, align 4
  %62 = load i32, i32* %34, align 4
  %63 = load i32, i32* %35, align 4
  %64 = call i32 @SPLATI_H2_SH(i32 %61, i32 0, i32 1, i32 %62, i32 %63)
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %25, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %26, align 4
  %69 = shl i32 %67, %68
  store i32 %69, i32* %28, align 4
  %70 = load i32, i32* %22, align 4
  %71 = and i32 %70, 65535
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %23, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %72, %74
  store i32 %75, i32* %29, align 4
  %76 = load i32, i32* %23, align 4
  %77 = mul nsw i32 128, %76
  store i32 %77, i32* %30, align 4
  %78 = load i32, i32* %30, align 4
  %79 = shl i32 %78, 6
  store i32 %79, i32* %30, align 4
  %80 = load i32, i32* %30, align 4
  %81 = load i32, i32* %28, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %28, align 4
  %83 = load i32, i32* %28, align 4
  %84 = call i32 @__msa_fill_w(i32 %83)
  store i32 %84, i32* %52, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i32 @__msa_fill_w(i32 %85)
  store i32 %86, i32* %51, align 4
  %87 = load i32, i32* %26, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @__msa_fill_w(i32 %88)
  store i32 %89, i32* %53, align 4
  %90 = load i64, i64* %36, align 8
  %91 = add nsw i64 %90, 2
  store i64 %91, i64* %37, align 8
  %92 = load i64, i64* %36, align 8
  %93 = add nsw i64 %92, 8
  store i64 %93, i64* %38, align 8
  %94 = load i64, i64* %36, align 8
  %95 = add nsw i64 %94, 10
  store i64 %95, i64* %39, align 8
  %96 = load i32, i32* %21, align 4
  store i32 %96, i32* %27, align 4
  br label %97

97:                                               ; preds = %101, %13
  %98 = load i32, i32* %27, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %27, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %214

101:                                              ; preds = %97
  %102 = load i32*, i32** %14, align 8
  %103 = load i64, i64* %31, align 8
  %104 = load i64, i64* %32, align 8
  %105 = call i32 @LD_SB2(i32* %102, i32 16, i64 %103, i64 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 24
  %108 = call i64 @LD_SB(i32* %107)
  store i64 %108, i64* %33, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %46, align 4
  %115 = load i32, i32* %47, align 4
  %116 = load i32, i32* %48, align 4
  %117 = load i32, i32* %49, align 4
  %118 = call i32 @LD_SH4(i32* %113, i32 8, i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %16, align 8
  %123 = load i64, i64* %31, align 8
  %124 = load i64, i64* %32, align 8
  %125 = load i64, i64* %33, align 8
  %126 = call i32 @XORI_B3_128_SB(i64 %123, i64 %124, i64 %125)
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %31, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %31, align 8
  %131 = load i64, i64* %36, align 8
  %132 = load i64, i64* %37, align 8
  %133 = load i64, i64* %44, align 8
  %134 = load i64, i64* %45, align 8
  %135 = call i32 @VSHF_B2_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i64, i64* %44, align 8
  %137 = load i64, i64* %45, align 8
  %138 = load i32, i32* %34, align 4
  %139 = load i32, i32* %35, align 4
  %140 = call i32 @HEVC_FILT_4TAP_SH(i64 %136, i64 %137, i32 %138, i32 %139)
  store i32 %140, i32* %40, align 4
  %141 = load i64, i64* %31, align 8
  %142 = load i64, i64* %32, align 8
  %143 = load i64, i64* %31, align 8
  %144 = load i64, i64* %32, align 8
  %145 = load i64, i64* %38, align 8
  %146 = load i64, i64* %39, align 8
  %147 = load i64, i64* %44, align 8
  %148 = load i64, i64* %45, align 8
  %149 = call i32 @VSHF_B2_SB(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %44, align 8
  %151 = load i64, i64* %45, align 8
  %152 = load i32, i32* %34, align 4
  %153 = load i32, i32* %35, align 4
  %154 = call i32 @HEVC_FILT_4TAP_SH(i64 %150, i64 %151, i32 %152, i32 %153)
  store i32 %154, i32* %41, align 4
  %155 = load i64, i64* %32, align 8
  %156 = load i64, i64* %32, align 8
  %157 = load i64, i64* %32, align 8
  %158 = load i64, i64* %32, align 8
  %159 = load i64, i64* %36, align 8
  %160 = load i64, i64* %37, align 8
  %161 = load i64, i64* %44, align 8
  %162 = load i64, i64* %45, align 8
  %163 = call i32 @VSHF_B2_SB(i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %44, align 8
  %165 = load i64, i64* %45, align 8
  %166 = load i32, i32* %34, align 4
  %167 = load i32, i32* %35, align 4
  %168 = call i32 @HEVC_FILT_4TAP_SH(i64 %164, i64 %165, i32 %166, i32 %167)
  store i32 %168, i32* %42, align 4
  %169 = load i64, i64* %33, align 8
  %170 = load i64, i64* %33, align 8
  %171 = load i64, i64* %33, align 8
  %172 = load i64, i64* %33, align 8
  %173 = load i64, i64* %36, align 8
  %174 = load i64, i64* %37, align 8
  %175 = load i64, i64* %44, align 8
  %176 = load i64, i64* %45, align 8
  %177 = call i32 @VSHF_B2_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i64, i64* %44, align 8
  %179 = load i64, i64* %45, align 8
  %180 = load i32, i32* %34, align 4
  %181 = load i32, i32* %35, align 4
  %182 = call i32 @HEVC_FILT_4TAP_SH(i64 %178, i64 %179, i32 %180, i32 %181)
  store i32 %182, i32* %43, align 4
  %183 = load i32, i32* %40, align 4
  %184 = load i32, i32* %41, align 4
  %185 = load i32, i32* %42, align 4
  %186 = load i32, i32* %43, align 4
  %187 = load i32, i32* %46, align 4
  %188 = load i32, i32* %47, align 4
  %189 = load i32, i32* %48, align 4
  %190 = load i32, i32* %49, align 4
  %191 = load i32, i32* %51, align 4
  %192 = load i32, i32* %53, align 4
  %193 = load i32, i32* %52, align 4
  %194 = load i32, i32* %40, align 4
  %195 = load i32, i32* %41, align 4
  %196 = load i32, i32* %42, align 4
  %197 = load i32, i32* %43, align 4
  %198 = call i32 @HEVC_BIW_RND_CLIP4(i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %41, align 4
  %200 = load i32, i32* %40, align 4
  %201 = load i32, i32* %43, align 4
  %202 = load i32, i32* %42, align 4
  %203 = load i32, i32* %40, align 4
  %204 = load i32, i32* %41, align 4
  %205 = call i32 @PCKEV_B2_SH(i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %40, align 4
  %207 = load i32, i32* %41, align 4
  %208 = load i32*, i32** %18, align 8
  %209 = call i32 @ST_SH2(i32 %206, i32 %207, i32* %208, i32 16)
  %210 = load i32, i32* %19, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %18, align 8
  br label %97

214:                                              ; preds = %97
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
