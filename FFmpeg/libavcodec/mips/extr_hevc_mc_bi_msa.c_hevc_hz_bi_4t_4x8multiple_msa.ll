; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_4x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_4x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_4x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_4x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %19 = alloca i32, align 4
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %50 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = call i64 @LD_SB(i32* %51)
  store i64 %52, i64* %38, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -1
  store i32* %54, i32** %9, align 8
  %55 = call i32 @__msa_ldi_h(i32 128)
  store i32 %55, i32* %49, align 4
  %56 = load i32, i32* %49, align 4
  %57 = shl i32 %56, 6
  store i32 %57, i32* %49, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @LD_SH(i32* %58)
  store i32 %59, i32* %48, align 4
  %60 = load i32, i32* %48, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @SPLATI_H2_SH(i32 %60, i32 0, i32 1, i32 %61, i32 %62)
  %64 = load i64, i64* %38, align 8
  %65 = add nsw i64 %64, 2
  store i64 %65, i64* %39, align 8
  %66 = load i32, i32* %16, align 4
  %67 = ashr i32 %66, 3
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %72, %8
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %17, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %232

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %22, align 8
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* %24, align 8
  %80 = load i64, i64* %25, align 8
  %81 = load i64, i64* %26, align 8
  %82 = load i64, i64* %27, align 8
  %83 = call i32 @LD_SB8(i32* %73, i32 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 8, %84
  %86 = load i32*, i32** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* %31, align 4
  %93 = load i32, i32* %32, align 4
  %94 = load i32, i32* %33, align 4
  %95 = call i32 @LD_SH4(i32* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 4, %96
  %98 = load i32*, i32** %11, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %34, align 4
  %104 = load i32, i32* %35, align 4
  %105 = load i32, i32* %36, align 4
  %106 = load i32, i32* %37, align 4
  %107 = call i32 @LD_SH4(i32* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 4, %108
  %110 = load i32*, i32** %11, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %11, align 8
  %113 = load i32, i32* %31, align 4
  %114 = load i32, i32* %30, align 4
  %115 = load i32, i32* %33, align 4
  %116 = load i32, i32* %32, align 4
  %117 = load i32, i32* %30, align 4
  %118 = load i32, i32* %31, align 4
  %119 = call i32 @ILVR_D2_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %35, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %37, align 4
  %123 = load i32, i32* %36, align 4
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = call i32 @ILVR_D2_SH(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i64, i64* %20, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %24, align 8
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %27, align 8
  %135 = call i32 @XORI_B8_128_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i32, i32* %49, align 4
  store i32 %136, i32* %44, align 4
  %137 = load i32, i32* %49, align 4
  store i32 %137, i32* %45, align 4
  %138 = load i32, i32* %49, align 4
  store i32 %138, i32* %46, align 4
  %139 = load i32, i32* %49, align 4
  store i32 %139, i32* %47, align 4
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %21, align 8
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* %38, align 8
  %145 = load i64, i64* %38, align 8
  %146 = load i64, i64* %40, align 8
  %147 = load i64, i64* %41, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %24, align 8
  %150 = load i64, i64* %25, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %27, align 8
  %153 = load i64, i64* %38, align 8
  %154 = load i64, i64* %38, align 8
  %155 = load i64, i64* %42, align 8
  %156 = load i64, i64* %43, align 8
  %157 = call i32 @VSHF_B2_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %40, align 8
  %159 = load i64, i64* %41, align 8
  %160 = load i64, i64* %42, align 8
  %161 = load i64, i64* %43, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %44, align 4
  %167 = load i32, i32* %45, align 4
  %168 = load i32, i32* %46, align 4
  %169 = load i32, i32* %47, align 4
  %170 = call i32 @DPADD_SB4_SH(i64 %158, i64 %159, i64 %160, i64 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %22, align 8
  %174 = load i64, i64* %23, align 8
  %175 = load i64, i64* %39, align 8
  %176 = load i64, i64* %39, align 8
  %177 = load i64, i64* %40, align 8
  %178 = load i64, i64* %41, align 8
  %179 = call i32 @VSHF_B2_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %24, align 8
  %181 = load i64, i64* %25, align 8
  %182 = load i64, i64* %26, align 8
  %183 = load i64, i64* %27, align 8
  %184 = load i64, i64* %39, align 8
  %185 = load i64, i64* %39, align 8
  %186 = load i64, i64* %42, align 8
  %187 = load i64, i64* %43, align 8
  %188 = call i32 @VSHF_B2_SB(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %40, align 8
  %190 = load i64, i64* %41, align 8
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %43, align 8
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %44, align 4
  %198 = load i32, i32* %45, align 4
  %199 = load i32, i32* %46, align 4
  %200 = load i32, i32* %47, align 4
  %201 = call i32 @DPADD_SB4_SH(i64 %189, i64 %190, i64 %191, i64 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %30, align 4
  %203 = load i32, i32* %31, align 4
  %204 = load i32, i32* %32, align 4
  %205 = load i32, i32* %33, align 4
  %206 = load i32, i32* %44, align 4
  %207 = load i32, i32* %45, align 4
  %208 = load i32, i32* %46, align 4
  %209 = load i32, i32* %47, align 4
  %210 = load i32, i32* %44, align 4
  %211 = load i32, i32* %45, align 4
  %212 = load i32, i32* %46, align 4
  %213 = load i32, i32* %47, align 4
  %214 = call i32 @HEVC_BI_RND_CLIP4(i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 7, i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %45, align 4
  %216 = load i32, i32* %44, align 4
  %217 = load i32, i32* %47, align 4
  %218 = load i32, i32* %46, align 4
  %219 = load i64, i64* %28, align 8
  %220 = load i64, i64* %29, align 8
  %221 = call i32 @PCKEV_B2_SB(i32 %215, i32 %216, i32 %217, i32 %218, i64 %219, i64 %220)
  %222 = load i64, i64* %28, align 8
  %223 = load i64, i64* %29, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @ST_W8(i64 %222, i64 %223, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %224, i32 %225)
  %227 = load i32, i32* %14, align 4
  %228 = mul nsw i32 8, %227
  %229 = load i32*, i32** %13, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32* %231, i32** %13, align 8
  br label %68

232:                                              ; preds = %68
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ST_W8(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
