; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 3, %61
  %63 = load i32*, i32** %7, align 8
  %64 = sext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @LD_SH(i32* %67)
  store i32 %68, i32* %56, align 4
  %69 = load i32, i32* %56, align 4
  %70 = load i32, i32* %52, align 4
  %71 = load i32, i32* %53, align 4
  %72 = load i32, i32* %54, align 4
  %73 = load i32, i32* %55, align 4
  %74 = call i32 @SPLATI_H4_SB(i32 %69, i32 0, i32 1, i32 2, i32 3, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @LD_SB7(i32* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 7, %85
  %87 = load i32*, i32** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %31, align 4
  %99 = load i32, i32* %32, align 4
  %100 = load i32, i32* %33, align 4
  %101 = load i32, i32* %36, align 4
  %102 = call i32 @ILVR_B4_SB(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %37, align 4
  %108 = load i32, i32* %38, align 4
  %109 = call i32 @ILVR_B2_SB(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %36, align 4
  %111 = load i32, i32* %31, align 4
  %112 = load i32, i32* %37, align 4
  %113 = load i32, i32* %32, align 4
  %114 = load i32, i32* %38, align 4
  %115 = load i32, i32* %33, align 4
  %116 = load i32, i32* %41, align 4
  %117 = load i32, i32* %42, align 4
  %118 = load i32, i32* %43, align 4
  %119 = call i32 @ILVR_D3_SB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %41, align 4
  %121 = load i32, i32* %42, align 4
  %122 = load i32, i32* %43, align 4
  %123 = call i32 @XORI_B3_128_SB(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = ashr i32 %124, 3
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %130, %6
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %13, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %289

130:                                              ; preds = %126
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %26, align 4
  %137 = call i32 @LD_SB4(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = mul nsw i32 4, %138
  %140 = load i32*, i32** %7, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %7, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %28, align 4
  %147 = load i32, i32* %29, align 4
  %148 = load i32, i32* %30, align 4
  %149 = call i32 @LD_SB4(i32* %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = mul nsw i32 4, %150
  %152 = load i32*, i32** %7, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %7, align 8
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %26, align 4
  %162 = load i32, i32* %25, align 4
  %163 = load i32, i32* %34, align 4
  %164 = load i32, i32* %39, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %40, align 4
  %167 = call i32 @ILVR_B4_SB(i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %27, align 4
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %28, align 4
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* %28, align 4
  %174 = load i32, i32* %30, align 4
  %175 = load i32, i32* %29, align 4
  %176 = load i32, i32* %45, align 4
  %177 = load i32, i32* %46, align 4
  %178 = load i32, i32* %47, align 4
  %179 = load i32, i32* %48, align 4
  %180 = call i32 @ILVR_B4_SB(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %39, align 4
  %182 = load i32, i32* %34, align 4
  %183 = load i32, i32* %40, align 4
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %44, align 4
  %186 = load i32, i32* %51, align 4
  %187 = call i32 @ILVR_D2_SB(i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %46, align 4
  %189 = load i32, i32* %45, align 4
  %190 = load i32, i32* %48, align 4
  %191 = load i32, i32* %47, align 4
  %192 = load i32, i32* %49, align 4
  %193 = load i32, i32* %50, align 4
  %194 = call i32 @ILVR_D2_SB(i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %44, align 4
  %196 = load i32, i32* %51, align 4
  %197 = call i32 @XORI_B2_128_SB(i32 %195, i32 %196)
  %198 = load i32, i32* %49, align 4
  %199 = load i32, i32* %50, align 4
  %200 = call i32 @XORI_B2_128_SB(i32 %198, i32 %199)
  %201 = load i32, i32* %41, align 4
  %202 = load i32, i32* %42, align 4
  %203 = load i32, i32* %52, align 4
  %204 = load i32, i32* %52, align 4
  %205 = load i32, i32* %57, align 4
  %206 = load i32, i32* %58, align 4
  %207 = call i32 @DOTP_SB2_SH(i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %43, align 4
  %209 = load i32, i32* %44, align 4
  %210 = load i32, i32* %52, align 4
  %211 = load i32, i32* %52, align 4
  %212 = load i32, i32* %59, align 4
  %213 = load i32, i32* %60, align 4
  %214 = call i32 @DOTP_SB2_SH(i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %42, align 4
  %216 = load i32, i32* %43, align 4
  %217 = load i32, i32* %53, align 4
  %218 = load i32, i32* %53, align 4
  %219 = load i32, i32* %57, align 4
  %220 = load i32, i32* %58, align 4
  %221 = call i32 @DPADD_SB2_SH(i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %44, align 4
  %223 = load i32, i32* %51, align 4
  %224 = load i32, i32* %53, align 4
  %225 = load i32, i32* %53, align 4
  %226 = load i32, i32* %59, align 4
  %227 = load i32, i32* %60, align 4
  %228 = call i32 @DPADD_SB2_SH(i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %43, align 4
  %230 = load i32, i32* %44, align 4
  %231 = load i32, i32* %54, align 4
  %232 = load i32, i32* %54, align 4
  %233 = load i32, i32* %57, align 4
  %234 = load i32, i32* %58, align 4
  %235 = call i32 @DPADD_SB2_SH(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %51, align 4
  %237 = load i32, i32* %49, align 4
  %238 = load i32, i32* %54, align 4
  %239 = load i32, i32* %54, align 4
  %240 = load i32, i32* %59, align 4
  %241 = load i32, i32* %60, align 4
  %242 = call i32 @DPADD_SB2_SH(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %44, align 4
  %244 = load i32, i32* %51, align 4
  %245 = load i32, i32* %55, align 4
  %246 = load i32, i32* %55, align 4
  %247 = load i32, i32* %57, align 4
  %248 = load i32, i32* %58, align 4
  %249 = call i32 @DPADD_SB2_SH(i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %49, align 4
  %251 = load i32, i32* %50, align 4
  %252 = load i32, i32* %55, align 4
  %253 = load i32, i32* %55, align 4
  %254 = load i32, i32* %59, align 4
  %255 = load i32, i32* %60, align 4
  %256 = call i32 @DPADD_SB2_SH(i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %57, align 4
  %258 = load i32, i32* %58, align 4
  %259 = call i32 @SRARI_H2_SH(i32 %257, i32 %258, i32 6)
  %260 = load i32, i32* %59, align 4
  %261 = load i32, i32* %60, align 4
  %262 = call i32 @SRARI_H2_SH(i32 %260, i32 %261, i32 6)
  %263 = load i32, i32* %57, align 4
  %264 = load i32, i32* %58, align 4
  %265 = call i32 @SAT_SH2_SH(i32 %263, i32 %264, i32 7)
  %266 = load i32, i32* %59, align 4
  %267 = load i32, i32* %60, align 4
  %268 = call i32 @SAT_SH2_SH(i32 %266, i32 %267, i32 7)
  %269 = load i32, i32* %57, align 4
  %270 = load i32, i32* %58, align 4
  %271 = call i32 @PCKEV_XORI128_UB(i32 %269, i32 %270)
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* %59, align 4
  %273 = load i32, i32* %60, align 4
  %274 = call i32 @PCKEV_XORI128_UB(i32 %272, i32 %273)
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %15, align 4
  %277 = load i32*, i32** %9, align 8
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @ST_W8(i32 %275, i32 %276, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %277, i32 %278)
  %280 = load i32, i32* %10, align 4
  %281 = mul nsw i32 8, %280
  %282 = load i32*, i32** %9, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  store i32* %284, i32** %9, align 8
  %285 = load i32, i32* %51, align 4
  store i32 %285, i32* %41, align 4
  %286 = load i32, i32* %49, align 4
  store i32 %286, i32* %42, align 4
  %287 = load i32, i32* %50, align 4
  store i32 %287, i32* %43, align 4
  %288 = load i32, i32* %30, align 4
  store i32 %288, i32* %22, align 4
  br label %126

289:                                              ; preds = %126
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DOTP_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
