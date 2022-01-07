; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_vt_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = sext i32 %35 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @LD_SH(i32* %40)
  store i32 %41, i32* %34, align 4
  %42 = load i32, i32* %34, align 4
  %43 = load i32, i32* %32, align 4
  %44 = load i32, i32* %33, align 4
  %45 = call i32 @SPLATI_H2_SH(i32 %42, i32 0, i32 1, i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @LD_SB3(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 3, %52
  %54 = load i32*, i32** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @XORI_B3_128_SB(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %24, align 4
  %67 = call i32 @ILVR_B2_SB(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @LD_SB2(i32* %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 2, %73
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @XORI_B2_128_SB(i32 %78, i32 %79)
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @ILVR_B2_SB(i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %32, align 4
  %91 = load i32, i32* %33, align 4
  %92 = call i32 @HEVC_FILT_4TAP_SH(i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %28, align 4
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %32, align 4
  %96 = load i32, i32* %33, align 4
  %97 = call i32 @HEVC_FILT_4TAP_SH(i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %29, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @LD_SB2(i32* %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 2, %103
  %105 = load i32*, i32** %7, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %7, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @XORI_B2_128_SB(i32 %108, i32 %109)
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* %27, align 4
  %117 = call i32 @ILVR_B2_SB(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %33, align 4
  %122 = call i32 @HEVC_FILT_4TAP_SH(i32 %118, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %30, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = call i32 @HEVC_FILT_4TAP_SH(i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %31, align 4
  %128 = load i32, i32* %28, align 4
  %129 = load i32, i32* %29, align 4
  %130 = load i32, i32* %30, align 4
  %131 = load i32, i32* %31, align 4
  %132 = call i32 @SRARI_H4_SH(i32 %128, i32 %129, i32 %130, i32 %131, i32 6)
  %133 = load i32, i32* %28, align 4
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* %30, align 4
  %136 = load i32, i32* %31, align 4
  %137 = call i32 @SAT_SH4_SH(i32 %133, i32 %134, i32 %135, i32 %136, i32 7)
  %138 = load i32, i32* %28, align 4
  %139 = load i32, i32* %29, align 4
  %140 = call i32 @PCKEV_XORI128_UB(i32 %138, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %30, align 4
  %142 = load i32, i32* %31, align 4
  %143 = call i32 @PCKEV_XORI128_UB(i32 %141, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @ST_W2(i32 %144, i32 0, i32 2, i32* %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @ST_H2(i32 %148, i32 2, i32 6, i32* %150, i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 2, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @ST_W2(i32 %153, i32 0, i32 2, i32* %158, i32 %159)
  %161 = load i32, i32* %14, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %10, align 4
  %164 = mul nsw i32 2, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @ST_H2(i32 %161, i32 2, i32 6, i32* %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = mul nsw i32 4, %170
  %172 = load i32*, i32** %9, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %9, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @LD_SB2(i32* %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = mul nsw i32 2, %180
  %182 = load i32*, i32** %7, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %7, align 8
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @XORI_B2_128_SB(i32 %185, i32 %186)
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %25, align 4
  %194 = call i32 @ILVR_B2_SB(i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %32, align 4
  %198 = load i32, i32* %33, align 4
  %199 = call i32 @HEVC_FILT_4TAP_SH(i32 %195, i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %28, align 4
  %200 = load i32, i32* %27, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* %32, align 4
  %203 = load i32, i32* %33, align 4
  %204 = call i32 @HEVC_FILT_4TAP_SH(i32 %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %29, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %21, align 4
  %209 = call i32 @LD_SB2(i32* %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = mul nsw i32 2, %210
  %212 = load i32*, i32** %7, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32* %214, i32** %7, align 8
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* %21, align 4
  %217 = call i32 @XORI_B2_128_SB(i32 %215, i32 %216)
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* %27, align 4
  %224 = call i32 @ILVR_B2_SB(i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %32, align 4
  %228 = load i32, i32* %33, align 4
  %229 = call i32 @HEVC_FILT_4TAP_SH(i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %30, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* %27, align 4
  %232 = load i32, i32* %32, align 4
  %233 = load i32, i32* %33, align 4
  %234 = call i32 @HEVC_FILT_4TAP_SH(i32 %230, i32 %231, i32 %232, i32 %233)
  store i32 %234, i32* %31, align 4
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %29, align 4
  %237 = load i32, i32* %30, align 4
  %238 = load i32, i32* %31, align 4
  %239 = call i32 @SRARI_H4_SH(i32 %235, i32 %236, i32 %237, i32 %238, i32 6)
  %240 = load i32, i32* %28, align 4
  %241 = load i32, i32* %29, align 4
  %242 = load i32, i32* %30, align 4
  %243 = load i32, i32* %31, align 4
  %244 = call i32 @SAT_SH4_SH(i32 %240, i32 %241, i32 %242, i32 %243, i32 7)
  %245 = load i32, i32* %28, align 4
  %246 = load i32, i32* %29, align 4
  %247 = call i32 @PCKEV_XORI128_UB(i32 %245, i32 %246)
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* %30, align 4
  %249 = load i32, i32* %31, align 4
  %250 = call i32 @PCKEV_XORI128_UB(i32 %248, i32 %249)
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* %13, align 4
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @ST_W2(i32 %251, i32 0, i32 2, i32* %252, i32 %253)
  %255 = load i32, i32* %13, align 4
  %256 = load i32*, i32** %9, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 4
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @ST_H2(i32 %255, i32 2, i32 6, i32* %257, i32 %258)
  %260 = load i32, i32* %14, align 4
  %261 = load i32*, i32** %9, align 8
  %262 = load i32, i32* %10, align 4
  %263 = mul nsw i32 2, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @ST_W2(i32 %260, i32 0, i32 2, i32* %265, i32 %266)
  %268 = load i32, i32* %14, align 4
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %10, align 4
  %271 = mul nsw i32 2, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = getelementptr inbounds i32, i32* %273, i64 4
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @ST_H2(i32 %268, i32 2, i32 6, i32* %274, i32 %275)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
