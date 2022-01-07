; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %38 = load i32, i32* @ff_hevc_mask_arr, align 4
  %39 = call i64 @LD_SB(i32 %38)
  store i64 %39, i64* %24, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @LD_SH(i32* %42)
  store i32 %43, i32* %36, align 4
  %44 = load i32, i32* %36, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = call i32 @SPLATI_H2_SH(i32 %44, i32 0, i32 1, i32 %45, i32 %46)
  %48 = load i64, i64* %24, align 8
  %49 = add nsw i64 %48, 2
  store i64 %49, i64* %25, align 8
  %50 = call i32 @__msa_ldi_h(i32 128)
  store i32 %50, i32* %37, align 4
  %51 = load i32, i32* %37, align 4
  %52 = shl i32 %51, 6
  store i32 %52, i32* %37, align 4
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 2
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %59, %6
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %245

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
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* %25, align 8
  %95 = load i64, i64* %34, align 8
  %96 = load i64, i64* %35, align 8
  %97 = call i32 @VSHF_B2_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i32, i32* %37, align 4
  store i32 %98, i32* %26, align 4
  %99 = load i64, i64* %34, align 8
  %100 = load i64, i64* %35, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* %26, align 4
  %104 = load i32, i32* %26, align 4
  %105 = call i32 @DPADD_SB2_SH(i64 %99, i64 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %24, align 8
  %111 = load i64, i64* %25, align 8
  %112 = load i64, i64* %34, align 8
  %113 = load i64, i64* %35, align 8
  %114 = call i32 @VSHF_B2_SB(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i32, i32* %37, align 4
  store i32 %115, i32* %27, align 4
  %116 = load i64, i64* %34, align 8
  %117 = load i64, i64* %35, align 8
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %27, align 4
  %122 = call i32 @DPADD_SB2_SH(i64 %116, i64 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %24, align 8
  %128 = load i64, i64* %25, align 8
  %129 = load i64, i64* %34, align 8
  %130 = load i64, i64* %35, align 8
  %131 = call i32 @VSHF_B2_SB(i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i32, i32* %37, align 4
  store i32 %132, i32* %28, align 4
  %133 = load i64, i64* %34, align 8
  %134 = load i64, i64* %35, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %28, align 4
  %138 = load i32, i32* %28, align 4
  %139 = call i32 @DPADD_SB2_SH(i64 %133, i64 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i64, i64* %17, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %24, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %34, align 8
  %147 = load i64, i64* %35, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i32, i32* %37, align 4
  store i32 %149, i32* %29, align 4
  %150 = load i64, i64* %34, align 8
  %151 = load i64, i64* %35, align 8
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %29, align 4
  %155 = load i32, i32* %29, align 4
  %156 = call i32 @DPADD_SB2_SH(i64 %150, i64 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load i64, i64* %18, align 8
  %158 = load i64, i64* %18, align 8
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %24, align 8
  %162 = load i64, i64* %25, align 8
  %163 = load i64, i64* %34, align 8
  %164 = load i64, i64* %35, align 8
  %165 = call i32 @VSHF_B2_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i32, i32* %37, align 4
  store i32 %166, i32* %30, align 4
  %167 = load i64, i64* %34, align 8
  %168 = load i64, i64* %35, align 8
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %30, align 4
  %172 = load i32, i32* %30, align 4
  %173 = call i32 @DPADD_SB2_SH(i64 %167, i64 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load i64, i64* %19, align 8
  %175 = load i64, i64* %19, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %24, align 8
  %179 = load i64, i64* %25, align 8
  %180 = load i64, i64* %34, align 8
  %181 = load i64, i64* %35, align 8
  %182 = call i32 @VSHF_B2_SB(i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i32, i32* %37, align 4
  store i32 %183, i32* %31, align 4
  %184 = load i64, i64* %34, align 8
  %185 = load i64, i64* %35, align 8
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* %31, align 4
  %189 = load i32, i32* %31, align 4
  %190 = call i32 @DPADD_SB2_SH(i64 %184, i64 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %20, align 8
  %194 = load i64, i64* %20, align 8
  %195 = load i64, i64* %24, align 8
  %196 = load i64, i64* %25, align 8
  %197 = load i64, i64* %34, align 8
  %198 = load i64, i64* %35, align 8
  %199 = call i32 @VSHF_B2_SB(i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load i32, i32* %37, align 4
  store i32 %200, i32* %32, align 4
  %201 = load i64, i64* %34, align 8
  %202 = load i64, i64* %35, align 8
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* %32, align 4
  %206 = load i32, i32* %32, align 4
  %207 = call i32 @DPADD_SB2_SH(i64 %201, i64 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  %208 = load i64, i64* %21, align 8
  %209 = load i64, i64* %21, align 8
  %210 = load i64, i64* %21, align 8
  %211 = load i64, i64* %21, align 8
  %212 = load i64, i64* %24, align 8
  %213 = load i64, i64* %25, align 8
  %214 = load i64, i64* %34, align 8
  %215 = load i64, i64* %35, align 8
  %216 = call i32 @VSHF_B2_SB(i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  %217 = load i32, i32* %37, align 4
  store i32 %217, i32* %33, align 4
  %218 = load i64, i64* %34, align 8
  %219 = load i64, i64* %35, align 8
  %220 = load i32, i32* %22, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %33, align 4
  %223 = load i32, i32* %33, align 4
  %224 = call i32 @DPADD_SB2_SH(i64 %218, i64 %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %26, align 4
  %226 = load i32, i32* %28, align 4
  %227 = load i32, i32* %30, align 4
  %228 = load i32, i32* %32, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @ST_SH4(i32 %225, i32 %226, i32 %227, i32 %228, i32* %229, i32 %230)
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %29, align 4
  %234 = load i32, i32* %31, align 4
  %235 = load i32, i32* %33, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 8
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @ST_SH4(i32 %232, i32 %233, i32 %234, i32 %235, i32* %237, i32 %238)
  %240 = load i32, i32* %10, align 4
  %241 = mul nsw i32 4, %240
  %242 = load i32*, i32** %9, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32* %244, i32** %9, align 8
  br label %55

245:                                              ; preds = %55
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
