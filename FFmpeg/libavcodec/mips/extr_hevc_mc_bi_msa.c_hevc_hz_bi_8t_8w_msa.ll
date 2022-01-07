; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
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
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %21, align 4
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
  %67 = ashr i32 %66, 2
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %72, %8
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %17, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %260

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %23, align 8
  %77 = load i64, i64* %24, align 8
  %78 = load i64, i64* %25, align 8
  %79 = call i32 @LD_SB4(i32* %73, i32 %74, i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 4, %80
  %82 = load i32*, i32** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %37, align 4
  %88 = load i32, i32* %38, align 4
  %89 = load i32, i32* %39, align 4
  %90 = load i32, i32* %40, align 4
  %91 = call i32 @LD_SH4(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 4, %92
  %94 = load i32*, i32** %11, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %11, align 8
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %24, align 8
  %100 = load i64, i64* %25, align 8
  %101 = call i32 @XORI_B4_128_SB(i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load i32, i32* %42, align 4
  store i32 %102, i32* %33, align 4
  %103 = load i32, i32* %42, align 4
  store i32 %103, i32* %34, align 4
  %104 = load i32, i32* %42, align 4
  store i32 %104, i32* %35, align 4
  %105 = load i32, i32* %42, align 4
  store i32 %105, i32* %36, align 4
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* %23, align 8
  %109 = load i64, i64* %23, align 8
  %110 = load i64, i64* %43, align 8
  %111 = load i64, i64* %43, align 8
  %112 = load i64, i64* %29, align 8
  %113 = load i64, i64* %30, align 8
  %114 = call i32 @VSHF_B2_SB(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* %25, align 8
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %43, align 8
  %120 = load i64, i64* %43, align 8
  %121 = load i64, i64* %31, align 8
  %122 = load i64, i64* %32, align 8
  %123 = call i32 @VSHF_B2_SB(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* %30, align 8
  %126 = load i64, i64* %31, align 8
  %127 = load i64, i64* %32, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %33, align 4
  %133 = load i32, i32* %34, align 4
  %134 = load i32, i32* %35, align 4
  %135 = load i32, i32* %36, align 4
  %136 = call i32 @DPADD_SB4_SH(i64 %124, i64 %125, i64 %126, i64 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %22, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %23, align 8
  %141 = load i64, i64* %26, align 8
  %142 = load i64, i64* %26, align 8
  %143 = load i64, i64* %29, align 8
  %144 = load i64, i64* %30, align 8
  %145 = call i32 @VSHF_B2_SB(i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %24, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i64, i64* %26, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %31, align 8
  %153 = load i64, i64* %32, align 8
  %154 = call i32 @VSHF_B2_SB(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i64, i64* %29, align 8
  %156 = load i64, i64* %30, align 8
  %157 = load i64, i64* %31, align 8
  %158 = load i64, i64* %32, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %33, align 4
  %164 = load i32, i32* %34, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %36, align 4
  %167 = call i32 @DPADD_SB4_SH(i64 %155, i64 %156, i64 %157, i64 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* %22, align 8
  %170 = load i64, i64* %23, align 8
  %171 = load i64, i64* %23, align 8
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %29, align 8
  %175 = load i64, i64* %30, align 8
  %176 = call i32 @VSHF_B2_SB(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %24, align 8
  %178 = load i64, i64* %24, align 8
  %179 = load i64, i64* %25, align 8
  %180 = load i64, i64* %25, align 8
  %181 = load i64, i64* %27, align 8
  %182 = load i64, i64* %27, align 8
  %183 = load i64, i64* %31, align 8
  %184 = load i64, i64* %32, align 8
  %185 = call i32 @VSHF_B2_SB(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %29, align 8
  %187 = load i64, i64* %30, align 8
  %188 = load i64, i64* %31, align 8
  %189 = load i64, i64* %32, align 8
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %33, align 4
  %195 = load i32, i32* %34, align 4
  %196 = load i32, i32* %35, align 4
  %197 = load i32, i32* %36, align 4
  %198 = call i32 @DPADD_SB4_SH(i64 %186, i64 %187, i64 %188, i64 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i64, i64* %22, align 8
  %200 = load i64, i64* %22, align 8
  %201 = load i64, i64* %23, align 8
  %202 = load i64, i64* %23, align 8
  %203 = load i64, i64* %28, align 8
  %204 = load i64, i64* %28, align 8
  %205 = load i64, i64* %29, align 8
  %206 = load i64, i64* %30, align 8
  %207 = call i32 @VSHF_B2_SB(i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64, i64* %24, align 8
  %209 = load i64, i64* %24, align 8
  %210 = load i64, i64* %25, align 8
  %211 = load i64, i64* %25, align 8
  %212 = load i64, i64* %28, align 8
  %213 = load i64, i64* %28, align 8
  %214 = load i64, i64* %31, align 8
  %215 = load i64, i64* %32, align 8
  %216 = call i32 @VSHF_B2_SB(i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  %217 = load i64, i64* %29, align 8
  %218 = load i64, i64* %30, align 8
  %219 = load i64, i64* %31, align 8
  %220 = load i64, i64* %32, align 8
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = load i32, i32* %33, align 4
  %226 = load i32, i32* %34, align 4
  %227 = load i32, i32* %35, align 4
  %228 = load i32, i32* %36, align 4
  %229 = call i32 @DPADD_SB4_SH(i64 %217, i64 %218, i64 %219, i64 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  %230 = load i32, i32* %37, align 4
  %231 = load i32, i32* %38, align 4
  %232 = load i32, i32* %39, align 4
  %233 = load i32, i32* %40, align 4
  %234 = load i32, i32* %33, align 4
  %235 = load i32, i32* %34, align 4
  %236 = load i32, i32* %35, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %33, align 4
  %239 = load i32, i32* %34, align 4
  %240 = load i32, i32* %35, align 4
  %241 = load i32, i32* %36, align 4
  %242 = call i32 @HEVC_BI_RND_CLIP4(i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 7, i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %33, align 4
  %245 = load i32, i32* %36, align 4
  %246 = load i32, i32* %35, align 4
  %247 = load i32, i32* %33, align 4
  %248 = load i32, i32* %34, align 4
  %249 = call i32 @PCKEV_B2_SH(i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %33, align 4
  %251 = load i32, i32* %34, align 4
  %252 = load i32*, i32** %13, align 8
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @ST_D4(i32 %250, i32 %251, i32 0, i32 1, i32 0, i32 1, i32* %252, i32 %253)
  %255 = load i32, i32* %14, align 4
  %256 = mul nsw i32 4, %255
  %257 = load i32*, i32** %13, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %13, align 8
  br label %68

260:                                              ; preds = %68
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
