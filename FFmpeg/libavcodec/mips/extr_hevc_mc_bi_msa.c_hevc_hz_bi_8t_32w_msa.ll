; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %49 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i64 @LD_SB(i32* %50)
  store i64 %51, i64* %48, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -3
  store i32* %53, i32** %9, align 8
  %54 = call i32 @__msa_ldi_h(i32 128)
  store i32 %54, i32* %47, align 4
  %55 = load i32, i32* %47, align 4
  %56 = shl i32 %55, 6
  store i32 %56, i32* %47, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %46, align 4
  %59 = load i32, i32* %46, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %25, align 4
  %63 = load i32, i32* %26, align 4
  %64 = call i32 @SPLATI_H4_SH(i32 %59, i32 0, i32 1, i32 2, i32 3, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i64, i64* %48, align 8
  %66 = add nsw i64 %65, 2
  store i64 %66, i64* %27, align 8
  %67 = load i64, i64* %48, align 8
  %68 = add nsw i64 %67, 4
  store i64 %68, i64* %28, align 8
  %69 = load i64, i64* %48, align 8
  %70 = add nsw i64 %69, 6
  store i64 %70, i64* %29, align 8
  %71 = load i64, i64* %48, align 8
  %72 = add nsw i64 %71, 8
  store i64 %72, i64* %30, align 8
  %73 = load i64, i64* %48, align 8
  %74 = add nsw i64 %73, 10
  store i64 %74, i64* %31, align 8
  %75 = load i64, i64* %48, align 8
  %76 = add nsw i64 %75, 12
  store i64 %76, i64* %32, align 8
  %77 = load i64, i64* %48, align 8
  %78 = add nsw i64 %77, 14
  store i64 %78, i64* %33, align 8
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %84, %8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %17, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %266

84:                                               ; preds = %80
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %19, align 8
  %88 = call i32 @LD_SB2(i32* %85, i32 16, i64 %86, i64 %87)
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 24
  %91 = call i64 @LD_SB(i32* %90)
  store i64 %91, i64* %20, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %9, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %42, align 4
  %98 = load i32, i32* %43, align 4
  %99 = load i32, i32* %44, align 4
  %100 = load i32, i32* %45, align 4
  %101 = call i32 @LD_SH4(i32* %96, i32 8, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %11, align 8
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %20, align 8
  %109 = call i32 @XORI_B3_128_SB(i64 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %47, align 4
  store i32 %110, i32* %38, align 4
  %111 = load i32, i32* %47, align 4
  store i32 %111, i32* %39, align 4
  %112 = load i32, i32* %47, align 4
  store i32 %112, i32* %40, align 4
  %113 = load i32, i32* %47, align 4
  store i32 %113, i32* %41, align 4
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %19, align 8
  %118 = load i64, i64* %48, align 8
  %119 = load i64, i64* %30, align 8
  %120 = load i64, i64* %34, align 8
  %121 = load i64, i64* %35, align 8
  %122 = call i32 @VSHF_B2_SB(i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %48, align 8
  %128 = load i64, i64* %48, align 8
  %129 = load i64, i64* %36, align 8
  %130 = load i64, i64* %37, align 8
  %131 = call i32 @VSHF_B2_SB(i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i64, i64* %34, align 8
  %133 = load i64, i64* %35, align 8
  %134 = load i64, i64* %36, align 8
  %135 = load i64, i64* %37, align 8
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %38, align 4
  %141 = load i32, i32* %39, align 4
  %142 = load i32, i32* %40, align 4
  %143 = load i32, i32* %41, align 4
  %144 = call i32 @DPADD_SB4_SH(i64 %132, i64 %133, i64 %134, i64 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %27, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %34, align 8
  %152 = load i64, i64* %35, align 8
  %153 = call i32 @VSHF_B2_SB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %19, align 8
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* %27, align 8
  %159 = load i64, i64* %27, align 8
  %160 = load i64, i64* %36, align 8
  %161 = load i64, i64* %37, align 8
  %162 = call i32 @VSHF_B2_SB(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %34, align 8
  %164 = load i64, i64* %35, align 8
  %165 = load i64, i64* %36, align 8
  %166 = load i64, i64* %37, align 8
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %38, align 4
  %172 = load i32, i32* %39, align 4
  %173 = load i32, i32* %40, align 4
  %174 = load i32, i32* %41, align 4
  %175 = call i32 @DPADD_SB4_SH(i64 %163, i64 %164, i64 %165, i64 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i64, i64* %18, align 8
  %177 = load i64, i64* %18, align 8
  %178 = load i64, i64* %18, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %28, align 8
  %181 = load i64, i64* %32, align 8
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %35, align 8
  %184 = call i32 @VSHF_B2_SB(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %19, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* %20, align 8
  %188 = load i64, i64* %20, align 8
  %189 = load i64, i64* %28, align 8
  %190 = load i64, i64* %28, align 8
  %191 = load i64, i64* %36, align 8
  %192 = load i64, i64* %37, align 8
  %193 = call i32 @VSHF_B2_SB(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %34, align 8
  %195 = load i64, i64* %35, align 8
  %196 = load i64, i64* %36, align 8
  %197 = load i64, i64* %37, align 8
  %198 = load i32, i32* %25, align 4
  %199 = load i32, i32* %25, align 4
  %200 = load i32, i32* %25, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* %38, align 4
  %203 = load i32, i32* %39, align 4
  %204 = load i32, i32* %40, align 4
  %205 = load i32, i32* %41, align 4
  %206 = call i32 @DPADD_SB4_SH(i64 %194, i64 %195, i64 %196, i64 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i64, i64* %18, align 8
  %208 = load i64, i64* %18, align 8
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %19, align 8
  %211 = load i64, i64* %29, align 8
  %212 = load i64, i64* %33, align 8
  %213 = load i64, i64* %34, align 8
  %214 = load i64, i64* %35, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %19, align 8
  %217 = load i64, i64* %19, align 8
  %218 = load i64, i64* %20, align 8
  %219 = load i64, i64* %20, align 8
  %220 = load i64, i64* %29, align 8
  %221 = load i64, i64* %29, align 8
  %222 = load i64, i64* %36, align 8
  %223 = load i64, i64* %37, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %34, align 8
  %226 = load i64, i64* %35, align 8
  %227 = load i64, i64* %36, align 8
  %228 = load i64, i64* %37, align 8
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %26, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %38, align 4
  %234 = load i32, i32* %39, align 4
  %235 = load i32, i32* %40, align 4
  %236 = load i32, i32* %41, align 4
  %237 = call i32 @DPADD_SB4_SH(i64 %225, i64 %226, i64 %227, i64 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %42, align 4
  %239 = load i32, i32* %43, align 4
  %240 = load i32, i32* %44, align 4
  %241 = load i32, i32* %45, align 4
  %242 = load i32, i32* %38, align 4
  %243 = load i32, i32* %39, align 4
  %244 = load i32, i32* %40, align 4
  %245 = load i32, i32* %41, align 4
  %246 = load i32, i32* %38, align 4
  %247 = load i32, i32* %39, align 4
  %248 = load i32, i32* %40, align 4
  %249 = load i32, i32* %41, align 4
  %250 = call i32 @HEVC_BI_RND_CLIP4(i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 7, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %39, align 4
  %252 = load i32, i32* %38, align 4
  %253 = load i32, i32* %41, align 4
  %254 = load i32, i32* %40, align 4
  %255 = load i64, i64* %21, align 8
  %256 = load i64, i64* %22, align 8
  %257 = call i32 @PCKEV_B2_SB(i32 %251, i32 %252, i32 %253, i32 %254, i64 %255, i64 %256)
  %258 = load i64, i64* %21, align 8
  %259 = load i64, i64* %22, align 8
  %260 = load i32*, i32** %13, align 8
  %261 = call i32 @ST_SB2(i64 %258, i64 %259, i32* %260, i32 16)
  %262 = load i32, i32* %14, align 4
  %263 = load i32*, i32** %13, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32* %265, i32** %13, align 8
  br label %80

266:                                              ; preds = %80
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ST_SB2(i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
