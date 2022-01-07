; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc01_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc01_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel16_mc01_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
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
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 64257, i32* %8, align 4
  store i32 5140, i32* %9, align 4
  store i32 507, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @__msa_fill_h(i32 %51)
  store i64 %52, i64* %40, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @__msa_fill_h(i32 %53)
  store i64 %54, i64* %41, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @__msa_fill_h(i32 %55)
  store i64 %56, i64* %42, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %19, align 8
  %70 = call i32 @LD_SB5(i32* %63, i32 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69)
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 5, %71
  %73 = load i32*, i32** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %5, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @XORI_B5_128_SB(i64 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %24, align 8
  %91 = load i64, i64* %28, align 8
  %92 = load i64, i64* %25, align 8
  %93 = load i64, i64* %29, align 8
  %94 = call i32 @ILVR_B4_SB(i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %32, align 8
  %104 = load i64, i64* %36, align 8
  %105 = load i64, i64* %33, align 8
  %106 = load i64, i64* %37, align 8
  %107 = call i32 @ILVL_B4_SB(i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106)
  store i32 4, i32* %7, align 4
  br label %108

108:                                              ; preds = %112, %3
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %7, align 4
  %111 = icmp ne i32 %109, 0
  br i1 %111, label %112, label %285

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i64, i64* %20, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %22, align 8
  %118 = load i64, i64* %23, align 8
  %119 = call i32 @LD_SB4(i32* %113, i32 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 4, %120
  %122 = load i32*, i32** %5, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %5, align 8
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %21, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* %23, align 8
  %129 = call i32 @XORI_B4_128_SB(i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %20, align 8
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %30, align 8
  %140 = load i64, i64* %27, align 8
  %141 = load i64, i64* %31, align 8
  %142 = call i32 @ILVR_B4_SB(i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141)
  %143 = load i64, i64* %20, align 8
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load i64, i64* %20, align 8
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* %23, align 8
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %34, align 8
  %152 = load i64, i64* %38, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %39, align 8
  %155 = call i32 @ILVL_B4_SB(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i64, i64* %24, align 8
  %157 = load i64, i64* %25, align 8
  %158 = load i64, i64* %26, align 8
  %159 = load i64, i64* %40, align 8
  %160 = load i64, i64* %41, align 8
  %161 = load i64, i64* %42, align 8
  %162 = call i32 @AVC_DOT_SH3_SH(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  store i32 %162, i32* %43, align 4
  %163 = load i64, i64* %28, align 8
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* %30, align 8
  %166 = load i64, i64* %40, align 8
  %167 = load i64, i64* %41, align 8
  %168 = load i64, i64* %42, align 8
  %169 = call i32 @AVC_DOT_SH3_SH(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  store i32 %169, i32* %44, align 4
  %170 = load i64, i64* %25, align 8
  %171 = load i64, i64* %26, align 8
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %40, align 8
  %174 = load i64, i64* %41, align 8
  %175 = load i64, i64* %42, align 8
  %176 = call i32 @AVC_DOT_SH3_SH(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  store i32 %176, i32* %45, align 4
  %177 = load i64, i64* %29, align 8
  %178 = load i64, i64* %30, align 8
  %179 = load i64, i64* %31, align 8
  %180 = load i64, i64* %40, align 8
  %181 = load i64, i64* %41, align 8
  %182 = load i64, i64* %42, align 8
  %183 = call i32 @AVC_DOT_SH3_SH(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  store i32 %183, i32* %46, align 4
  %184 = load i64, i64* %32, align 8
  %185 = load i64, i64* %33, align 8
  %186 = load i64, i64* %34, align 8
  %187 = load i64, i64* %40, align 8
  %188 = load i64, i64* %41, align 8
  %189 = load i64, i64* %42, align 8
  %190 = call i32 @AVC_DOT_SH3_SH(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189)
  store i32 %190, i32* %47, align 4
  %191 = load i64, i64* %36, align 8
  %192 = load i64, i64* %37, align 8
  %193 = load i64, i64* %38, align 8
  %194 = load i64, i64* %40, align 8
  %195 = load i64, i64* %41, align 8
  %196 = load i64, i64* %42, align 8
  %197 = call i32 @AVC_DOT_SH3_SH(i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  store i32 %197, i32* %48, align 4
  %198 = load i64, i64* %33, align 8
  %199 = load i64, i64* %34, align 8
  %200 = load i64, i64* %35, align 8
  %201 = load i64, i64* %40, align 8
  %202 = load i64, i64* %41, align 8
  %203 = load i64, i64* %42, align 8
  %204 = call i32 @AVC_DOT_SH3_SH(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203)
  store i32 %204, i32* %49, align 4
  %205 = load i64, i64* %37, align 8
  %206 = load i64, i64* %38, align 8
  %207 = load i64, i64* %39, align 8
  %208 = load i64, i64* %40, align 8
  %209 = load i64, i64* %41, align 8
  %210 = load i64, i64* %42, align 8
  %211 = call i32 @AVC_DOT_SH3_SH(i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210)
  store i32 %211, i32* %50, align 4
  %212 = load i32, i32* %43, align 4
  %213 = load i32, i32* %44, align 4
  %214 = load i32, i32* %45, align 4
  %215 = load i32, i32* %46, align 4
  %216 = call i32 @SRARI_H4_SH(i32 %212, i32 %213, i32 %214, i32 %215, i32 5)
  %217 = load i32, i32* %43, align 4
  %218 = load i32, i32* %44, align 4
  %219 = load i32, i32* %45, align 4
  %220 = load i32, i32* %46, align 4
  %221 = call i32 @SAT_SH4_SH(i32 %217, i32 %218, i32 %219, i32 %220, i32 7)
  %222 = load i32, i32* %47, align 4
  %223 = load i32, i32* %48, align 4
  %224 = load i32, i32* %49, align 4
  %225 = load i32, i32* %50, align 4
  %226 = call i32 @SRARI_H4_SH(i32 %222, i32 %223, i32 %224, i32 %225, i32 5)
  %227 = load i32, i32* %47, align 4
  %228 = load i32, i32* %48, align 4
  %229 = load i32, i32* %49, align 4
  %230 = load i32, i32* %50, align 4
  %231 = call i32 @SAT_SH4_SH(i32 %227, i32 %228, i32 %229, i32 %230, i32 7)
  %232 = load i32, i32* %47, align 4
  %233 = load i32, i32* %43, align 4
  %234 = load i32, i32* %48, align 4
  %235 = load i32, i32* %44, align 4
  %236 = load i32, i32* %49, align 4
  %237 = load i32, i32* %45, align 4
  %238 = load i32, i32* %50, align 4
  %239 = load i32, i32* %46, align 4
  %240 = load i64, i64* %11, align 8
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load i64, i64* %14, align 8
  %244 = call i32 @PCKEV_B4_UB(i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i64 %240, i64 %241, i64 %242, i64 %243)
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* %17, align 8
  %247 = call i64 @__msa_aver_s_b(i64 %245, i64 %246)
  store i64 %247, i64* %11, align 8
  %248 = load i64, i64* %12, align 8
  %249 = load i64, i64* %18, align 8
  %250 = call i64 @__msa_aver_s_b(i64 %248, i64 %249)
  store i64 %250, i64* %12, align 8
  %251 = load i64, i64* %13, align 8
  %252 = load i64, i64* %19, align 8
  %253 = call i64 @__msa_aver_s_b(i64 %251, i64 %252)
  store i64 %253, i64* %13, align 8
  %254 = load i64, i64* %14, align 8
  %255 = load i64, i64* %20, align 8
  %256 = call i64 @__msa_aver_s_b(i64 %254, i64 %255)
  store i64 %256, i64* %14, align 8
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* %12, align 8
  %259 = load i64, i64* %13, align 8
  %260 = load i64, i64* %14, align 8
  %261 = call i32 @XORI_B4_128_UB(i64 %257, i64 %258, i64 %259, i64 %260)
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* %12, align 8
  %264 = load i64, i64* %13, align 8
  %265 = load i64, i64* %14, align 8
  %266 = load i32*, i32** %4, align 8
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @ST_UB4(i64 %262, i64 %263, i64 %264, i64 %265, i32* %266, i32 %267)
  %269 = load i32, i32* %6, align 4
  %270 = mul nsw i32 4, %269
  %271 = load i32*, i32** %4, align 8
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32* %273, i32** %4, align 8
  %274 = load i64, i64* %26, align 8
  store i64 %274, i64* %24, align 8
  %275 = load i64, i64* %27, align 8
  store i64 %275, i64* %25, align 8
  %276 = load i64, i64* %30, align 8
  store i64 %276, i64* %28, align 8
  %277 = load i64, i64* %31, align 8
  store i64 %277, i64* %29, align 8
  %278 = load i64, i64* %34, align 8
  store i64 %278, i64* %32, align 8
  %279 = load i64, i64* %35, align 8
  store i64 %279, i64* %33, align 8
  %280 = load i64, i64* %38, align 8
  store i64 %280, i64* %36, align 8
  %281 = load i64, i64* %39, align 8
  store i64 %281, i64* %37, align 8
  %282 = load i64, i64* %21, align 8
  store i64 %282, i64* %17, align 8
  %283 = load i64, i64* %22, align 8
  store i64 %283, i64* %18, align 8
  %284 = load i64, i64* %23, align 8
  store i64 %284, i64* %19, align 8
  br label %108

285:                                              ; preds = %108
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_aver_s_b(i64, i64) #1

declare dso_local i32 @XORI_B4_128_UB(i64, i64, i64, i64) #1

declare dso_local i32 @ST_UB4(i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
