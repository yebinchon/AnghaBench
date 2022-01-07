; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %40 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i64 @LD_SB(i32* %41)
  store i64 %42, i64* %24, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -1
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @LD_SH(i32* %45)
  store i32 %46, i32* %30, align 4
  %47 = load i32, i32* %30, align 4
  %48 = load i64, i64* %22, align 8
  %49 = load i64, i64* %23, align 8
  %50 = call i32 @SPLATI_H2_SB(i32 %47, i32 0, i32 1, i64 %48, i64 %49)
  %51 = load i64, i64* %24, align 8
  %52 = add nsw i64 %51, 2
  store i64 %52, i64* %25, align 8
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 2
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %59, %6
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %273

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @LD_SB4(i32* %60, i32 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* %21, align 8
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
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %21, align 8
  %88 = call i32 @XORI_B8_128_SB(i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* %26, align 8
  %96 = load i64, i64* %27, align 8
  %97 = call i32 @VSHF_B2_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %24, align 8
  %103 = load i64, i64* %24, align 8
  %104 = load i64, i64* %28, align 8
  %105 = load i64, i64* %29, align 8
  %106 = call i32 @VSHF_B2_SB(i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* %27, align 8
  %109 = load i64, i64* %28, align 8
  %110 = load i64, i64* %29, align 8
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* %22, align 8
  %114 = load i64, i64* %22, align 8
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %32, align 4
  %117 = load i32, i32* %33, align 4
  %118 = load i32, i32* %34, align 4
  %119 = call i32 @DOTP_SB4_SH(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %25, align 8
  %125 = load i64, i64* %25, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %27, align 8
  %128 = call i32 @VSHF_B2_SB(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %25, align 8
  %134 = load i64, i64* %25, align 8
  %135 = load i64, i64* %28, align 8
  %136 = load i64, i64* %29, align 8
  %137 = call i32 @VSHF_B2_SB(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %29, align 8
  %142 = load i64, i64* %23, align 8
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* %23, align 8
  %145 = load i64, i64* %23, align 8
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* %32, align 4
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %34, align 4
  %150 = call i32 @DPADD_SB4_SH(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %31, align 4
  %152 = load i32, i32* %32, align 4
  %153 = load i32, i32* %33, align 4
  %154 = load i32, i32* %34, align 4
  %155 = call i32 @SRARI_H4_SH(i32 %151, i32 %152, i32 %153, i32 %154, i32 6)
  %156 = load i32, i32* %31, align 4
  %157 = load i32, i32* %32, align 4
  %158 = load i32, i32* %33, align 4
  %159 = load i32, i32* %34, align 4
  %160 = call i32 @SAT_SH4_SH(i32 %156, i32 %157, i32 %158, i32 %159, i32 7)
  %161 = load i32, i32* %31, align 4
  %162 = load i32, i32* %32, align 4
  %163 = call i32 @PCKEV_XORI128_UB(i32 %161, i32 %162)
  store i32 %163, i32* %39, align 4
  %164 = load i32, i32* %39, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @ST_UB(i32 %164, i32* %165)
  %167 = load i32, i32* %10, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %9, align 8
  %171 = load i32, i32* %33, align 4
  %172 = load i32, i32* %34, align 4
  %173 = call i32 @PCKEV_XORI128_UB(i32 %171, i32 %172)
  store i32 %173, i32* %39, align 4
  %174 = load i32, i32* %39, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @ST_UB(i32 %174, i32* %175)
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %9, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %18, align 8
  %183 = load i64, i64* %19, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load i64, i64* %24, align 8
  %186 = load i64, i64* %24, align 8
  %187 = load i64, i64* %26, align 8
  %188 = load i64, i64* %27, align 8
  %189 = call i32 @VSHF_B2_SB(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i64, i64* %20, align 8
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %21, align 8
  %193 = load i64, i64* %21, align 8
  %194 = load i64, i64* %24, align 8
  %195 = load i64, i64* %24, align 8
  %196 = load i64, i64* %28, align 8
  %197 = load i64, i64* %29, align 8
  %198 = call i32 @VSHF_B2_SB(i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197)
  %199 = load i64, i64* %26, align 8
  %200 = load i64, i64* %27, align 8
  %201 = load i64, i64* %28, align 8
  %202 = load i64, i64* %29, align 8
  %203 = load i64, i64* %22, align 8
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* %22, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i32, i32* %35, align 4
  %208 = load i32, i32* %36, align 4
  %209 = load i32, i32* %37, align 4
  %210 = load i32, i32* %38, align 4
  %211 = call i32 @DOTP_SB4_SH(i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %18, align 8
  %214 = load i64, i64* %19, align 8
  %215 = load i64, i64* %19, align 8
  %216 = load i64, i64* %25, align 8
  %217 = load i64, i64* %25, align 8
  %218 = load i64, i64* %26, align 8
  %219 = load i64, i64* %27, align 8
  %220 = call i32 @VSHF_B2_SB(i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219)
  %221 = load i64, i64* %20, align 8
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* %21, align 8
  %224 = load i64, i64* %21, align 8
  %225 = load i64, i64* %25, align 8
  %226 = load i64, i64* %25, align 8
  %227 = load i64, i64* %28, align 8
  %228 = load i64, i64* %29, align 8
  %229 = call i32 @VSHF_B2_SB(i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228)
  %230 = load i64, i64* %26, align 8
  %231 = load i64, i64* %27, align 8
  %232 = load i64, i64* %28, align 8
  %233 = load i64, i64* %29, align 8
  %234 = load i64, i64* %23, align 8
  %235 = load i64, i64* %23, align 8
  %236 = load i64, i64* %23, align 8
  %237 = load i64, i64* %23, align 8
  %238 = load i32, i32* %35, align 4
  %239 = load i32, i32* %36, align 4
  %240 = load i32, i32* %37, align 4
  %241 = load i32, i32* %38, align 4
  %242 = call i32 @DPADD_SB4_SH(i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %35, align 4
  %244 = load i32, i32* %36, align 4
  %245 = load i32, i32* %37, align 4
  %246 = load i32, i32* %38, align 4
  %247 = call i32 @SRARI_H4_SH(i32 %243, i32 %244, i32 %245, i32 %246, i32 6)
  %248 = load i32, i32* %35, align 4
  %249 = load i32, i32* %36, align 4
  %250 = load i32, i32* %37, align 4
  %251 = load i32, i32* %38, align 4
  %252 = call i32 @SAT_SH4_SH(i32 %248, i32 %249, i32 %250, i32 %251, i32 7)
  %253 = load i32, i32* %35, align 4
  %254 = load i32, i32* %36, align 4
  %255 = call i32 @PCKEV_XORI128_UB(i32 %253, i32 %254)
  store i32 %255, i32* %39, align 4
  %256 = load i32, i32* %39, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @ST_UB(i32 %256, i32* %257)
  %259 = load i32, i32* %10, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32* %262, i32** %9, align 8
  %263 = load i32, i32* %37, align 4
  %264 = load i32, i32* %38, align 4
  %265 = call i32 @PCKEV_XORI128_UB(i32 %263, i32 %264)
  store i32 %265, i32* %39, align 4
  %266 = load i32, i32* %39, align 4
  %267 = load i32*, i32** %9, align 8
  %268 = call i32 @ST_UB(i32 %266, i32* %267)
  %269 = load i32, i32* %10, align 4
  %270 = load i32*, i32** %9, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %9, align 8
  br label %55

273:                                              ; preds = %55
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
