; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
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
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %48, align 4
  %59 = load i32, i32* %48, align 4
  %60 = load i32, i32* %49, align 4
  %61 = load i32, i32* %50, align 4
  %62 = call i32 @SPLATI_H2_SB(i32 %59, i32 0, i32 1, i32 %60, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @LD_SB3(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @XORI_B3_128_SB(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %24, align 4
  %78 = load i32, i32* %28, align 4
  %79 = call i32 @ILVR_B2_SB(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %40, align 4
  %85 = load i32, i32* %44, align 4
  %86 = call i32 @ILVL_B2_SB(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 16
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @LD_SB3(i32* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 3, %94
  %96 = load i32*, i32** %7, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %7, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @XORI_B3_128_SB(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %26, align 4
  %108 = load i32, i32* %30, align 4
  %109 = call i32 @ILVR_B2_SB(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %42, align 4
  %115 = load i32, i32* %46, align 4
  %116 = call i32 @ILVL_B2_SB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = ashr i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %123, %6
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %13, align 4
  %122 = icmp ne i32 %120, 0
  br i1 %122, label %123, label %281

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @LD_SB2(i32* %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @XORI_B2_128_SB(i32 %129, i32 %130)
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* %29, align 4
  %138 = call i32 @ILVR_B2_SB(i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %41, align 4
  %144 = load i32, i32* %45, align 4
  %145 = call i32 @ILVL_B2_SB(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %49, align 4
  %149 = load i32, i32* %50, align 4
  %150 = call i32 @HEVC_FILT_4TAP_SH(i32 %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %32, align 4
  %151 = load i32, i32* %40, align 4
  %152 = load i32, i32* %41, align 4
  %153 = load i32, i32* %49, align 4
  %154 = load i32, i32* %50, align 4
  %155 = call i32 @HEVC_FILT_4TAP_SH(i32 %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %36, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %29, align 4
  %158 = load i32, i32* %49, align 4
  %159 = load i32, i32* %50, align 4
  %160 = call i32 @HEVC_FILT_4TAP_SH(i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %33, align 4
  %161 = load i32, i32* %44, align 4
  %162 = load i32, i32* %45, align 4
  %163 = load i32, i32* %49, align 4
  %164 = load i32, i32* %50, align 4
  %165 = call i32 @HEVC_FILT_4TAP_SH(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %37, align 4
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %33, align 4
  %168 = load i32, i32* %36, align 4
  %169 = load i32, i32* %37, align 4
  %170 = call i32 @SRARI_H4_SH(i32 %166, i32 %167, i32 %168, i32 %169, i32 6)
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %33, align 4
  %173 = load i32, i32* %36, align 4
  %174 = load i32, i32* %37, align 4
  %175 = call i32 @SAT_SH4_SH(i32 %171, i32 %172, i32 %173, i32 %174, i32 7)
  %176 = load i32, i32* %32, align 4
  %177 = load i32, i32* %36, align 4
  %178 = call i32 @PCKEV_XORI128_UB(i32 %176, i32 %177)
  store i32 %178, i32* %51, align 4
  %179 = load i32, i32* %51, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @ST_UB(i32 %179, i32* %180)
  %182 = load i32, i32* %33, align 4
  %183 = load i32, i32* %37, align 4
  %184 = call i32 @PCKEV_XORI128_UB(i32 %182, i32 %183)
  store i32 %184, i32* %51, align 4
  %185 = load i32, i32* %51, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = call i32 @ST_UB(i32 %185, i32* %189)
  %191 = load i32, i32* %25, align 4
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %29, align 4
  store i32 %192, i32* %28, align 4
  %193 = load i32, i32* %41, align 4
  store i32 %193, i32* %40, align 4
  %194 = load i32, i32* %45, align 4
  store i32 %194, i32* %44, align 4
  %195 = load i32, i32* %18, align 4
  store i32 %195, i32* %16, align 4
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 16
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* %23, align 4
  %201 = call i32 @LD_SB2(i32* %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = mul nsw i32 2, %202
  %204 = load i32*, i32** %7, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %7, align 8
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %23, align 4
  %209 = call i32 @XORI_B2_128_SB(i32 %207, i32 %208)
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* %27, align 4
  %215 = load i32, i32* %31, align 4
  %216 = call i32 @ILVR_B2_SB(i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %22, align 4
  %221 = load i32, i32* %43, align 4
  %222 = load i32, i32* %47, align 4
  %223 = call i32 @ILVL_B2_SB(i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %26, align 4
  %225 = load i32, i32* %27, align 4
  %226 = load i32, i32* %49, align 4
  %227 = load i32, i32* %50, align 4
  %228 = call i32 @HEVC_FILT_4TAP_SH(i32 %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %34, align 4
  %229 = load i32, i32* %42, align 4
  %230 = load i32, i32* %43, align 4
  %231 = load i32, i32* %49, align 4
  %232 = load i32, i32* %50, align 4
  %233 = call i32 @HEVC_FILT_4TAP_SH(i32 %229, i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %38, align 4
  %234 = load i32, i32* %30, align 4
  %235 = load i32, i32* %31, align 4
  %236 = load i32, i32* %49, align 4
  %237 = load i32, i32* %50, align 4
  %238 = call i32 @HEVC_FILT_4TAP_SH(i32 %234, i32 %235, i32 %236, i32 %237)
  store i32 %238, i32* %35, align 4
  %239 = load i32, i32* %46, align 4
  %240 = load i32, i32* %47, align 4
  %241 = load i32, i32* %49, align 4
  %242 = load i32, i32* %50, align 4
  %243 = call i32 @HEVC_FILT_4TAP_SH(i32 %239, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %39, align 4
  %244 = load i32, i32* %34, align 4
  %245 = load i32, i32* %35, align 4
  %246 = load i32, i32* %38, align 4
  %247 = load i32, i32* %39, align 4
  %248 = call i32 @SRARI_H4_SH(i32 %244, i32 %245, i32 %246, i32 %247, i32 6)
  %249 = load i32, i32* %34, align 4
  %250 = load i32, i32* %35, align 4
  %251 = load i32, i32* %38, align 4
  %252 = load i32, i32* %39, align 4
  %253 = call i32 @SAT_SH4_SH(i32 %249, i32 %250, i32 %251, i32 %252, i32 7)
  %254 = load i32, i32* %34, align 4
  %255 = load i32, i32* %38, align 4
  %256 = call i32 @PCKEV_XORI128_UB(i32 %254, i32 %255)
  store i32 %256, i32* %51, align 4
  %257 = load i32, i32* %51, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 16
  %260 = call i32 @ST_UB(i32 %257, i32* %259)
  %261 = load i32, i32* %35, align 4
  %262 = load i32, i32* %39, align 4
  %263 = call i32 @PCKEV_XORI128_UB(i32 %261, i32 %262)
  store i32 %263, i32* %51, align 4
  %264 = load i32, i32* %51, align 4
  %265 = load i32*, i32** %9, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 16
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = call i32 @ST_UB(i32 %264, i32* %269)
  %271 = load i32, i32* %10, align 4
  %272 = mul nsw i32 2, %271
  %273 = load i32*, i32** %9, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %9, align 8
  %276 = load i32, i32* %27, align 4
  store i32 %276, i32* %26, align 4
  %277 = load i32, i32* %31, align 4
  store i32 %277, i32* %30, align 4
  %278 = load i32, i32* %43, align 4
  store i32 %278, i32* %42, align 4
  %279 = load i32, i32* %47, align 4
  store i32 %279, i32* %46, align 4
  %280 = load i32, i32* %23, align 4
  store i32 %280, i32* %21, align 4
  br label %119

281:                                              ; preds = %119
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

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
