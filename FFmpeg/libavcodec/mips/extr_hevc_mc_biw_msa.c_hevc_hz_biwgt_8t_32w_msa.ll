; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_8t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_8t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_8t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
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
  %66 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = call i64 @LD_SB(i32* %67)
  store i64 %68, i64* %42, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -3
  store i32* %70, i32** %14, align 8
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %25, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %26, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %28, align 4
  %76 = load i32, i32* %22, align 4
  %77 = and i32 %76, 65535
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %23, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %78, %80
  store i32 %81, i32* %29, align 4
  %82 = load i32, i32* %23, align 4
  %83 = mul nsw i32 128, %82
  store i32 %83, i32* %30, align 4
  %84 = load i32, i32* %30, align 4
  %85 = shl i32 %84, 6
  store i32 %85, i32* %30, align 4
  %86 = load i32, i32* %30, align 4
  %87 = load i32, i32* %28, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %28, align 4
  %89 = load i32, i32* %28, align 4
  %90 = call i32 @__msa_fill_w(i32 %89)
  store i32 %90, i32* %64, align 4
  %91 = load i32, i32* %29, align 4
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %63, align 4
  %93 = load i32, i32* %26, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @__msa_fill_w(i32 %94)
  store i32 %95, i32* %65, align 4
  %96 = load i32*, i32** %20, align 8
  %97 = call i32 @LD_SH(i32* %96)
  store i32 %97, i32* %58, align 4
  %98 = load i32, i32* %58, align 4
  %99 = load i32, i32* %38, align 4
  %100 = load i32, i32* %39, align 4
  %101 = load i32, i32* %40, align 4
  %102 = load i32, i32* %41, align 4
  %103 = call i32 @SPLATI_H4_SH(i32 %98, i32 0, i32 1, i32 2, i32 3, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i64, i64* %42, align 8
  %105 = add nsw i64 %104, 2
  store i64 %105, i64* %43, align 8
  %106 = load i64, i64* %42, align 8
  %107 = add nsw i64 %106, 4
  store i64 %107, i64* %44, align 8
  %108 = load i64, i64* %42, align 8
  %109 = add nsw i64 %108, 6
  store i64 %109, i64* %45, align 8
  %110 = load i64, i64* %42, align 8
  %111 = add nsw i64 %110, 8
  store i64 %111, i64* %46, align 8
  %112 = load i64, i64* %42, align 8
  %113 = add nsw i64 %112, 10
  store i64 %113, i64* %47, align 8
  %114 = load i64, i64* %42, align 8
  %115 = add nsw i64 %114, 12
  store i64 %115, i64* %48, align 8
  %116 = load i64, i64* %42, align 8
  %117 = add nsw i64 %116, 14
  store i64 %117, i64* %49, align 8
  %118 = load i32, i32* %21, align 4
  store i32 %118, i32* %27, align 4
  br label %119

119:                                              ; preds = %123, %13
  %120 = load i32, i32* %27, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %27, align 4
  %122 = icmp ne i32 %120, 0
  br i1 %122, label %123, label %260

123:                                              ; preds = %119
  %124 = load i32*, i32** %14, align 8
  %125 = load i64, i64* %31, align 8
  %126 = load i64, i64* %32, align 8
  %127 = call i32 @LD_SB2(i32* %124, i32 16, i64 %125, i64 %126)
  %128 = load i32*, i32** %14, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 24
  %130 = call i64 @LD_SB(i32* %129)
  store i64 %130, i64* %33, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %14, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %34, align 4
  %137 = load i32, i32* %35, align 4
  %138 = load i32, i32* %36, align 4
  %139 = load i32, i32* %37, align 4
  %140 = call i32 @LD_SH4(i32* %135, i32 8, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %17, align 4
  %142 = load i32*, i32** %16, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %16, align 8
  %145 = load i64, i64* %31, align 8
  %146 = load i64, i64* %32, align 8
  %147 = load i64, i64* %33, align 8
  %148 = call i32 @XORI_B3_128_SB(i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %42, align 8
  %152 = load i64, i64* %43, align 8
  %153 = load i64, i64* %44, align 8
  %154 = load i64, i64* %45, align 8
  %155 = load i64, i64* %50, align 8
  %156 = load i64, i64* %51, align 8
  %157 = load i64, i64* %52, align 8
  %158 = load i64, i64* %53, align 8
  %159 = call i32 @VSHF_B4_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %50, align 8
  %161 = load i64, i64* %51, align 8
  %162 = load i64, i64* %52, align 8
  %163 = load i64, i64* %53, align 8
  %164 = load i32, i32* %38, align 4
  %165 = load i32, i32* %39, align 4
  %166 = load i32, i32* %40, align 4
  %167 = load i32, i32* %41, align 4
  %168 = call i32 @HEVC_FILT_8TAP_SH(i64 %160, i64 %161, i64 %162, i64 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  store i32 %168, i32* %54, align 4
  %169 = load i64, i64* %31, align 8
  %170 = load i64, i64* %32, align 8
  %171 = load i64, i64* %46, align 8
  %172 = load i64, i64* %47, align 8
  %173 = load i64, i64* %48, align 8
  %174 = load i64, i64* %49, align 8
  %175 = load i64, i64* %50, align 8
  %176 = load i64, i64* %51, align 8
  %177 = load i64, i64* %52, align 8
  %178 = load i64, i64* %53, align 8
  %179 = call i32 @VSHF_B4_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %50, align 8
  %181 = load i64, i64* %51, align 8
  %182 = load i64, i64* %52, align 8
  %183 = load i64, i64* %53, align 8
  %184 = load i32, i32* %38, align 4
  %185 = load i32, i32* %39, align 4
  %186 = load i32, i32* %40, align 4
  %187 = load i32, i32* %41, align 4
  %188 = call i32 @HEVC_FILT_8TAP_SH(i64 %180, i64 %181, i64 %182, i64 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %55, align 4
  %189 = load i64, i64* %32, align 8
  %190 = load i64, i64* %32, align 8
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %43, align 8
  %193 = load i64, i64* %44, align 8
  %194 = load i64, i64* %45, align 8
  %195 = load i64, i64* %50, align 8
  %196 = load i64, i64* %51, align 8
  %197 = load i64, i64* %52, align 8
  %198 = load i64, i64* %53, align 8
  %199 = call i32 @VSHF_B4_SB(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load i64, i64* %50, align 8
  %201 = load i64, i64* %51, align 8
  %202 = load i64, i64* %52, align 8
  %203 = load i64, i64* %53, align 8
  %204 = load i32, i32* %38, align 4
  %205 = load i32, i32* %39, align 4
  %206 = load i32, i32* %40, align 4
  %207 = load i32, i32* %41, align 4
  %208 = call i32 @HEVC_FILT_8TAP_SH(i64 %200, i64 %201, i64 %202, i64 %203, i32 %204, i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %56, align 4
  %209 = load i64, i64* %33, align 8
  %210 = load i64, i64* %33, align 8
  %211 = load i64, i64* %42, align 8
  %212 = load i64, i64* %43, align 8
  %213 = load i64, i64* %44, align 8
  %214 = load i64, i64* %45, align 8
  %215 = load i64, i64* %50, align 8
  %216 = load i64, i64* %51, align 8
  %217 = load i64, i64* %52, align 8
  %218 = load i64, i64* %53, align 8
  %219 = call i32 @VSHF_B4_SB(i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %50, align 8
  %221 = load i64, i64* %51, align 8
  %222 = load i64, i64* %52, align 8
  %223 = load i64, i64* %53, align 8
  %224 = load i32, i32* %38, align 4
  %225 = load i32, i32* %39, align 4
  %226 = load i32, i32* %40, align 4
  %227 = load i32, i32* %41, align 4
  %228 = call i32 @HEVC_FILT_8TAP_SH(i64 %220, i64 %221, i64 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %57, align 4
  %229 = load i32, i32* %54, align 4
  %230 = load i32, i32* %55, align 4
  %231 = load i32, i32* %56, align 4
  %232 = load i32, i32* %57, align 4
  %233 = load i32, i32* %34, align 4
  %234 = load i32, i32* %35, align 4
  %235 = load i32, i32* %36, align 4
  %236 = load i32, i32* %37, align 4
  %237 = load i32, i32* %63, align 4
  %238 = load i32, i32* %65, align 4
  %239 = load i32, i32* %64, align 4
  %240 = load i32, i32* %59, align 4
  %241 = load i32, i32* %60, align 4
  %242 = load i32, i32* %61, align 4
  %243 = load i32, i32* %62, align 4
  %244 = call i32 @HEVC_BIW_RND_CLIP4(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %60, align 4
  %246 = load i32, i32* %59, align 4
  %247 = load i32, i32* %62, align 4
  %248 = load i32, i32* %61, align 4
  %249 = load i32, i32* %59, align 4
  %250 = load i32, i32* %60, align 4
  %251 = call i32 @PCKEV_B2_SH(i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %59, align 4
  %253 = load i32, i32* %60, align 4
  %254 = load i32*, i32** %18, align 8
  %255 = call i32 @ST_SH2(i32 %252, i32 %253, i32* %254, i32 16)
  %256 = load i32, i32* %19, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %18, align 8
  br label %119

260:                                              ; preds = %119
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
