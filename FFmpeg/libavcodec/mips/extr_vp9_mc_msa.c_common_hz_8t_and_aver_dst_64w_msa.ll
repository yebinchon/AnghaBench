; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_64w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_64w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_and_aver_dst_64w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_and_aver_dst_64w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %50 = load i32*, i32** @mc_filt_mask_arr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i64 @LD_UB(i32* %51)
  store i64 %52, i64* %25, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -3
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @LD_SH(i32* %55)
  store i32 %56, i32* %29, align 4
  %57 = load i32, i32* %29, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @SPLATI_H4_SB(i32 %57, i32 0, i32 1, i32 2, i32 3, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* %25, align 8
  %64 = add nsw i64 %63, 2
  store i64 %64, i64* %26, align 8
  %65 = load i64, i64* %25, align 8
  %66 = add nsw i64 %65, 4
  store i64 %66, i64* %27, align 8
  %67 = load i64, i64* %25, align 8
  %68 = add nsw i64 %67, 6
  store i64 %68, i64* %28, align 8
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %256, %6
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %13, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %265

74:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %253, %74
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %256

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %14, align 4
  %81 = shl i32 %80, 5
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = call i32 @LD_SB(i32* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = shl i32 %86, 5
  %88 = add nsw i32 16, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = call i32 @LD_SB(i32* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %14, align 4
  %94 = shl i32 %93, 5
  %95 = add nsw i32 24, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = call i32 @LD_SB(i32* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @__msa_sldi_b(i32 %99, i32 %100, i32 8)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @XORI_B4_128_SB(i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i64, i64* %25, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %28, align 8
  %113 = load i32, i32* %34, align 4
  %114 = load i32, i32* %38, align 4
  %115 = load i32, i32* %42, align 4
  %116 = load i32, i32* %46, align 4
  %117 = call i32 @VSHF_B4_SH(i32 %107, i32 %108, i64 %109, i64 %110, i64 %111, i64 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i64, i64* %25, align 8
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %27, align 8
  %123 = load i64, i64* %28, align 8
  %124 = load i32, i32* %35, align 4
  %125 = load i32, i32* %39, align 4
  %126 = load i32, i32* %43, align 4
  %127 = load i32, i32* %47, align 4
  %128 = call i32 @VSHF_B4_SH(i32 %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %27, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i32, i32* %36, align 4
  %136 = load i32, i32* %40, align 4
  %137 = load i32, i32* %44, align 4
  %138 = load i32, i32* %48, align 4
  %139 = call i32 @VSHF_B4_SH(i32 %129, i32 %130, i64 %131, i64 %132, i64 %133, i64 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i64, i64* %25, align 8
  %143 = load i64, i64* %26, align 8
  %144 = load i64, i64* %27, align 8
  %145 = load i64, i64* %28, align 8
  %146 = load i32, i32* %37, align 4
  %147 = load i32, i32* %41, align 4
  %148 = load i32, i32* %45, align 4
  %149 = load i32, i32* %49, align 4
  %150 = call i32 @VSHF_B4_SH(i32 %140, i32 %141, i64 %142, i64 %143, i64 %144, i64 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %34, align 4
  %152 = load i32, i32* %35, align 4
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %37, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32, i32* %35, align 4
  %161 = load i32, i32* %36, align 4
  %162 = load i32, i32* %37, align 4
  %163 = call i32 @DOTP_SB4_SH(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %42, align 4
  %165 = load i32, i32* %43, align 4
  %166 = load i32, i32* %44, align 4
  %167 = load i32, i32* %45, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %42, align 4
  %173 = load i32, i32* %43, align 4
  %174 = load i32, i32* %44, align 4
  %175 = load i32, i32* %45, align 4
  %176 = call i32 @DOTP_SB4_SH(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %38, align 4
  %178 = load i32, i32* %39, align 4
  %179 = load i32, i32* %40, align 4
  %180 = load i32, i32* %41, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %34, align 4
  %186 = load i32, i32* %35, align 4
  %187 = load i32, i32* %36, align 4
  %188 = load i32, i32* %37, align 4
  %189 = call i32 @DPADD_SB4_SH(i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %46, align 4
  %191 = load i32, i32* %47, align 4
  %192 = load i32, i32* %48, align 4
  %193 = load i32, i32* %49, align 4
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* %42, align 4
  %199 = load i32, i32* %43, align 4
  %200 = load i32, i32* %44, align 4
  %201 = load i32, i32* %45, align 4
  %202 = call i32 @DPADD_SB4_SH(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %34, align 4
  %204 = load i32, i32* %42, align 4
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* %43, align 4
  %207 = load i32, i32* %36, align 4
  %208 = load i32, i32* %44, align 4
  %209 = load i32, i32* %37, align 4
  %210 = load i32, i32* %45, align 4
  %211 = load i32, i32* %30, align 4
  %212 = load i32, i32* %31, align 4
  %213 = load i32, i32* %32, align 4
  %214 = load i32, i32* %33, align 4
  %215 = call i32 @ADDS_SH4_SH(i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %30, align 4
  %217 = load i32, i32* %31, align 4
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* %33, align 4
  %220 = call i32 @SRARI_H4_SH(i32 %216, i32 %217, i32 %218, i32 %219, i32 7)
  %221 = load i32, i32* %30, align 4
  %222 = load i32, i32* %31, align 4
  %223 = load i32, i32* %32, align 4
  %224 = load i32, i32* %33, align 4
  %225 = call i32 @SAT_SH4_SH(i32 %221, i32 %222, i32 %223, i32 %224, i32 7)
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* %14, align 4
  %228 = shl i32 %227, 5
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i64, i64* %23, align 8
  %232 = load i64, i64* %24, align 8
  %233 = call i32 @LD_UB2(i32* %230, i32 16, i64 %231, i64 %232)
  %234 = load i32, i32* %31, align 4
  %235 = load i32, i32* %30, align 4
  %236 = load i64, i64* %23, align 8
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %14, align 4
  %239 = shl i32 %238, 5
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = call i32 @PCKEV_XORI128_AVG_ST_UB(i32 %234, i32 %235, i64 %236, i32* %241)
  %243 = load i32, i32* %33, align 4
  %244 = load i32, i32* %32, align 4
  %245 = load i64, i64* %24, align 8
  %246 = load i32*, i32** %9, align 8
  %247 = load i32, i32* %14, align 4
  %248 = shl i32 %247, 5
  %249 = add nsw i32 16, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  %252 = call i32 @PCKEV_XORI128_AVG_ST_UB(i32 %243, i32 %244, i64 %245, i32* %251)
  br label %253

253:                                              ; preds = %78
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  br label %75

256:                                              ; preds = %75
  %257 = load i32, i32* %8, align 4
  %258 = load i32*, i32** %7, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %7, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load i32*, i32** %9, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %9, align 8
  br label %70

265:                                              ; preds = %70
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B4_SH(i32, i32, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADDS_SH4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #1

declare dso_local i32 @PCKEV_XORI128_AVG_ST_UB(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
