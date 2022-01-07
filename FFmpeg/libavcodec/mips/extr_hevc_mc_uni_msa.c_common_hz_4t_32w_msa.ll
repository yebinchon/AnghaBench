; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
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
  store i32 %46, i32* %31, align 4
  %47 = load i32, i32* %31, align 4
  %48 = load i64, i64* %22, align 8
  %49 = load i64, i64* %23, align 8
  %50 = call i32 @SPLATI_H2_SB(i32 %47, i32 0, i32 1, i64 %48, i64 %49)
  %51 = load i64, i64* %24, align 8
  %52 = add nsw i64 %51, 2
  store i64 %52, i64* %25, align 8
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %59, %6
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %277

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @LD_SB(i32* %60)
  store i64 %61, i64* %14, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = call i64 @LD_SB(i32* %63)
  store i64 %64, i64* %15, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 16
  %67 = call i64 @LD_SB(i32* %66)
  store i64 %67, i64* %16, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 24
  %70 = call i64 @LD_SB(i32* %69)
  store i64 %70, i64* %17, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i64 @LD_SB(i32* %75)
  store i64 %76, i64* %18, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = call i64 @LD_SB(i32* %78)
  store i64 %79, i64* %19, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  %82 = call i64 @LD_SB(i32* %81)
  store i64 %82, i64* %20, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 24
  %85 = call i64 @LD_SB(i32* %84)
  store i64 %85, i64* %21, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %21, align 8
  %98 = call i32 @XORI_B8_128_SB(i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %24, align 8
  %104 = load i64, i64* %24, align 8
  %105 = load i64, i64* %27, align 8
  %106 = load i64, i64* %28, align 8
  %107 = call i32 @VSHF_B2_SB(i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106)
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %24, align 8
  %114 = load i64, i64* %29, align 8
  %115 = load i64, i64* %30, align 8
  %116 = call i32 @VSHF_B2_SB(i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %28, align 8
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* %30, align 8
  %121 = load i64, i64* %22, align 8
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* %22, align 8
  %124 = load i64, i64* %22, align 8
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = load i32, i32* %34, align 4
  %128 = load i32, i32* %35, align 4
  %129 = call i32 @DOTP_SB4_SH(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %25, align 8
  %135 = load i64, i64* %25, align 8
  %136 = load i64, i64* %27, align 8
  %137 = load i64, i64* %28, align 8
  %138 = call i32 @VSHF_B2_SB(i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* %29, align 8
  %146 = load i64, i64* %30, align 8
  %147 = call i32 @VSHF_B2_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %27, align 8
  %149 = load i64, i64* %28, align 8
  %150 = load i64, i64* %29, align 8
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %23, align 8
  %155 = load i64, i64* %23, align 8
  %156 = load i32, i32* %32, align 4
  %157 = load i32, i32* %33, align 4
  %158 = load i32, i32* %34, align 4
  %159 = load i32, i32* %35, align 4
  %160 = call i32 @DPADD_SB4_SH(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* %18, align 8
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %19, align 8
  %165 = load i64, i64* %24, align 8
  %166 = load i64, i64* %24, align 8
  %167 = load i64, i64* %27, align 8
  %168 = load i64, i64* %28, align 8
  %169 = call i32 @VSHF_B2_SB(i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %20, align 8
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %21, align 8
  %174 = load i64, i64* %24, align 8
  %175 = load i64, i64* %24, align 8
  %176 = load i64, i64* %29, align 8
  %177 = load i64, i64* %30, align 8
  %178 = call i32 @VSHF_B2_SB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  %179 = load i64, i64* %27, align 8
  %180 = load i64, i64* %28, align 8
  %181 = load i64, i64* %29, align 8
  %182 = load i64, i64* %30, align 8
  %183 = load i64, i64* %22, align 8
  %184 = load i64, i64* %22, align 8
  %185 = load i64, i64* %22, align 8
  %186 = load i64, i64* %22, align 8
  %187 = load i32, i32* %36, align 4
  %188 = load i32, i32* %37, align 4
  %189 = load i32, i32* %38, align 4
  %190 = load i32, i32* %39, align 4
  %191 = call i32 @DOTP_SB4_SH(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %18, align 8
  %194 = load i64, i64* %19, align 8
  %195 = load i64, i64* %19, align 8
  %196 = load i64, i64* %25, align 8
  %197 = load i64, i64* %25, align 8
  %198 = load i64, i64* %27, align 8
  %199 = load i64, i64* %28, align 8
  %200 = call i32 @VSHF_B2_SB(i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %20, align 8
  %202 = load i64, i64* %20, align 8
  %203 = load i64, i64* %21, align 8
  %204 = load i64, i64* %21, align 8
  %205 = load i64, i64* %25, align 8
  %206 = load i64, i64* %25, align 8
  %207 = load i64, i64* %29, align 8
  %208 = load i64, i64* %30, align 8
  %209 = call i32 @VSHF_B2_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %27, align 8
  %211 = load i64, i64* %28, align 8
  %212 = load i64, i64* %29, align 8
  %213 = load i64, i64* %30, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %23, align 8
  %216 = load i64, i64* %23, align 8
  %217 = load i64, i64* %23, align 8
  %218 = load i32, i32* %36, align 4
  %219 = load i32, i32* %37, align 4
  %220 = load i32, i32* %38, align 4
  %221 = load i32, i32* %39, align 4
  %222 = call i32 @DPADD_SB4_SH(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %32, align 4
  %224 = load i32, i32* %33, align 4
  %225 = load i32, i32* %34, align 4
  %226 = load i32, i32* %35, align 4
  %227 = call i32 @SRARI_H4_SH(i32 %223, i32 %224, i32 %225, i32 %226, i32 6)
  %228 = load i32, i32* %36, align 4
  %229 = load i32, i32* %37, align 4
  %230 = load i32, i32* %38, align 4
  %231 = load i32, i32* %39, align 4
  %232 = call i32 @SRARI_H4_SH(i32 %228, i32 %229, i32 %230, i32 %231, i32 6)
  %233 = load i32, i32* %32, align 4
  %234 = load i32, i32* %33, align 4
  %235 = load i32, i32* %34, align 4
  %236 = load i32, i32* %35, align 4
  %237 = call i32 @SAT_SH4_SH(i32 %233, i32 %234, i32 %235, i32 %236, i32 7)
  %238 = load i32, i32* %36, align 4
  %239 = load i32, i32* %37, align 4
  %240 = load i32, i32* %38, align 4
  %241 = load i32, i32* %39, align 4
  %242 = call i32 @SAT_SH4_SH(i32 %238, i32 %239, i32 %240, i32 %241, i32 7)
  %243 = load i32, i32* %32, align 4
  %244 = load i32, i32* %33, align 4
  %245 = call i32 @PCKEV_XORI128_UB(i32 %243, i32 %244)
  store i32 %245, i32* %26, align 4
  %246 = load i32, i32* %26, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @ST_UB(i32 %246, i32* %247)
  %249 = load i32, i32* %34, align 4
  %250 = load i32, i32* %35, align 4
  %251 = call i32 @PCKEV_XORI128_UB(i32 %249, i32 %250)
  store i32 %251, i32* %26, align 4
  %252 = load i32, i32* %26, align 4
  %253 = load i32*, i32** %9, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 16
  %255 = call i32 @ST_UB(i32 %252, i32* %254)
  %256 = load i32, i32* %10, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %9, align 8
  %260 = load i32, i32* %36, align 4
  %261 = load i32, i32* %37, align 4
  %262 = call i32 @PCKEV_XORI128_UB(i32 %260, i32 %261)
  store i32 %262, i32* %26, align 4
  %263 = load i32, i32* %26, align 4
  %264 = load i32*, i32** %9, align 8
  %265 = call i32 @ST_UB(i32 %263, i32* %264)
  %266 = load i32, i32* %38, align 4
  %267 = load i32, i32* %39, align 4
  %268 = call i32 @PCKEV_XORI128_UB(i32 %266, i32 %267)
  store i32 %268, i32* %26, align 4
  %269 = load i32, i32* %26, align 4
  %270 = load i32*, i32** %9, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 16
  %272 = call i32 @ST_UB(i32 %269, i32* %271)
  %273 = load i32, i32* %10, align 4
  %274 = load i32*, i32** %9, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %9, align 8
  br label %55

277:                                              ; preds = %55
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

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
