; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %45 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i64 @LD_SB(i32* %46)
  store i64 %47, i64* %20, align 8
  %48 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 32
  %50 = call i64 @LD_SB(i32* %49)
  store i64 %50, i64* %22, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -1
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @LD_SH(i32* %53)
  store i32 %54, i32* %38, align 4
  %55 = load i32, i32* %38, align 4
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = call i32 @SPLATI_H2_SB(i32 %55, i32 0, i32 1, i64 %56, i64 %57)
  %59 = load i64, i64* %20, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* %21, align 8
  %61 = load i64, i64* %22, align 8
  %62 = add nsw i64 %61, 2
  store i64 %62, i64* %23, align 8
  store i32 4, i32* %13, align 4
  br label %63

63:                                               ; preds = %67, %6
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %13, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %219

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @LD_SB4(i32* %68, i32 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 4, %75
  %77 = load i32*, i32** %7, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %7, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @XORI_B4_128_SB(i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %25, align 8
  %93 = call i32 @VSHF_B2_SB(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* %25, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i32, i32* %39, align 4
  %99 = load i32, i32* %40, align 4
  %100 = call i32 @DOTP_SB2_SH(i64 %94, i64 %95, i64 %96, i64 %97, i32 %98, i32 %99)
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %23, align 8
  %106 = load i64, i64* %23, align 8
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* %27, align 8
  %109 = call i32 @VSHF_B2_SB(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %26, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %19, align 8
  %114 = load i32, i32* %39, align 4
  %115 = load i32, i32* %40, align 4
  %116 = call i32 @DPADD_SB2_SH(i64 %110, i64 %111, i64 %112, i64 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %39, align 4
  %118 = load i32, i32* %40, align 4
  %119 = call i32 @SRARI_H2_SH(i32 %117, i32 %118, i32 6)
  %120 = load i32, i32* %39, align 4
  %121 = load i32, i32* %40, align 4
  %122 = call i32 @SAT_SH2_SH(i32 %120, i32 %121, i32 7)
  %123 = load i32, i32* %39, align 4
  %124 = load i32, i32* %40, align 4
  %125 = call i32 @PCKEV_XORI128_UB(i32 %123, i32 %124)
  store i32 %125, i32* %36, align 4
  %126 = load i32, i32* %36, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @ST_W4(i32 %126, i32 0, i32 1, i32 2, i32 3, i32* %128, i32 %129)
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %28, align 8
  %138 = load i64, i64* %29, align 8
  %139 = call i32 @VSHF_B2_SB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %30, align 8
  %147 = load i64, i64* %31, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %28, align 8
  %150 = load i64, i64* %29, align 8
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load i32, i32* %41, align 4
  %158 = load i32, i32* %42, align 4
  %159 = load i32, i32* %43, align 4
  %160 = load i32, i32* %44, align 4
  %161 = call i32 @DOTP_SB4_SH(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i64, i64* %21, align 8
  %167 = load i64, i64* %21, align 8
  %168 = load i64, i64* %32, align 8
  %169 = load i64, i64* %33, align 8
  %170 = call i32 @VSHF_B2_SB(i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load i64, i64* %21, align 8
  %176 = load i64, i64* %21, align 8
  %177 = load i64, i64* %34, align 8
  %178 = load i64, i64* %35, align 8
  %179 = call i32 @VSHF_B2_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %32, align 8
  %181 = load i64, i64* %33, align 8
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %35, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load i64, i64* %19, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* %19, align 8
  %188 = load i32, i32* %41, align 4
  %189 = load i32, i32* %42, align 4
  %190 = load i32, i32* %43, align 4
  %191 = load i32, i32* %44, align 4
  %192 = call i32 @DPADD_SB4_SH(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* %41, align 4
  %194 = load i32, i32* %42, align 4
  %195 = load i32, i32* %43, align 4
  %196 = load i32, i32* %44, align 4
  %197 = call i32 @SRARI_H4_SH(i32 %193, i32 %194, i32 %195, i32 %196, i32 6)
  %198 = load i32, i32* %41, align 4
  %199 = load i32, i32* %42, align 4
  %200 = load i32, i32* %43, align 4
  %201 = load i32, i32* %44, align 4
  %202 = call i32 @SAT_SH4_SH(i32 %198, i32 %199, i32 %200, i32 %201, i32 7)
  %203 = load i32, i32* %41, align 4
  %204 = load i32, i32* %42, align 4
  %205 = call i32 @PCKEV_XORI128_UB(i32 %203, i32 %204)
  store i32 %205, i32* %36, align 4
  %206 = load i32, i32* %43, align 4
  %207 = load i32, i32* %44, align 4
  %208 = call i32 @PCKEV_XORI128_UB(i32 %206, i32 %207)
  store i32 %208, i32* %37, align 4
  %209 = load i32, i32* %36, align 4
  %210 = load i32, i32* %37, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @ST_D4(i32 %209, i32 %210, i32 0, i32 1, i32 0, i32 1, i32* %211, i32 %212)
  %214 = load i32, i32* %10, align 4
  %215 = mul nsw i32 4, %214
  %216 = load i32*, i32** %9, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %9, align 8
  br label %63

219:                                              ; preds = %63
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_SB2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
