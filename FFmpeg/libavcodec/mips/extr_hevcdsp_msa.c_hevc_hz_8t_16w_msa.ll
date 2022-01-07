; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
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
  %35 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %36 = load i32, i32* @ff_hevc_mask_arr, align 4
  %37 = call i64 @LD_SB(i32 %36)
  store i64 %37, i64* %35, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 -3
  store i32* %39, i32** %7, align 8
  %40 = call i32 @__msa_ldi_h(i32 128)
  store i32 %40, i32* %34, align 4
  %41 = load i32, i32* %34, align 4
  %42 = shl i32 %41, 6
  store i32 %42, i32* %34, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %33, align 4
  %45 = load i32, i32* %33, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @SPLATI_H4_SH(i32 %45, i32 0, i32 1, i32 2, i32 3, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %35, align 8
  %52 = add nsw i64 %51, 2
  store i64 %52, i64* %22, align 8
  %53 = load i64, i64* %35, align 8
  %54 = add nsw i64 %53, 4
  store i64 %54, i64* %23, align 8
  %55 = load i64, i64* %35, align 8
  %56 = add nsw i64 %55, 6
  store i64 %56, i64* %24, align 8
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %63, %6
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %13, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %229

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %16, align 8
  %68 = call i32 @LD_SB2(i32* %64, i32 %65, i64 %66, i64 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @LD_SB2(i32* %70, i32 %71, i64 %72, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 2, %75
  %77 = load i32*, i32** %7, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %7, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @XORI_B4_128_SB(i64 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i32, i32* %34, align 4
  store i32 %85, i32* %29, align 4
  %86 = load i32, i32* %34, align 4
  store i32 %86, i32* %30, align 4
  %87 = load i32, i32* %34, align 4
  store i32 %87, i32* %31, align 4
  %88 = load i32, i32* %34, align 4
  store i32 %88, i32* %32, align 4
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %35, align 8
  %94 = load i64, i64* %35, align 8
  %95 = load i64, i64* %25, align 8
  %96 = load i64, i64* %26, align 8
  %97 = call i32 @VSHF_B2_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %35, align 8
  %103 = load i64, i64* %35, align 8
  %104 = load i64, i64* %27, align 8
  %105 = load i64, i64* %28, align 8
  %106 = call i32 @VSHF_B2_SB(i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  %107 = load i64, i64* %25, align 8
  %108 = load i64, i64* %26, align 8
  %109 = load i64, i64* %27, align 8
  %110 = load i64, i64* %28, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %29, align 4
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %31, align 4
  %118 = load i32, i32* %32, align 4
  %119 = call i32 @DPADD_SB4_SH(i64 %107, i64 %108, i64 %109, i64 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %22, align 8
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %25, align 8
  %127 = load i64, i64* %26, align 8
  %128 = call i32 @VSHF_B2_SB(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %27, align 8
  %136 = load i64, i64* %28, align 8
  %137 = call i32 @VSHF_B2_SB(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %25, align 8
  %139 = load i64, i64* %26, align 8
  %140 = load i64, i64* %27, align 8
  %141 = load i64, i64* %28, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %29, align 4
  %147 = load i32, i32* %30, align 4
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %32, align 4
  %150 = call i32 @DPADD_SB4_SH(i64 %138, i64 %139, i64 %140, i64 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %23, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* %25, align 8
  %158 = load i64, i64* %26, align 8
  %159 = call i32 @VSHF_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* %16, align 8
  %162 = load i64, i64* %17, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* %23, align 8
  %166 = load i64, i64* %27, align 8
  %167 = load i64, i64* %28, align 8
  %168 = call i32 @VSHF_B2_SB(i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %25, align 8
  %170 = load i64, i64* %26, align 8
  %171 = load i64, i64* %27, align 8
  %172 = load i64, i64* %28, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %29, align 4
  %178 = load i32, i32* %30, align 4
  %179 = load i32, i32* %31, align 4
  %180 = load i32, i32* %32, align 4
  %181 = call i32 @DPADD_SB4_SH(i64 %169, i64 %170, i64 %171, i64 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %14, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %24, align 8
  %187 = load i64, i64* %24, align 8
  %188 = load i64, i64* %25, align 8
  %189 = load i64, i64* %26, align 8
  %190 = call i32 @VSHF_B2_SB(i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189)
  %191 = load i64, i64* %16, align 8
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %17, align 8
  %195 = load i64, i64* %24, align 8
  %196 = load i64, i64* %24, align 8
  %197 = load i64, i64* %27, align 8
  %198 = load i64, i64* %28, align 8
  %199 = call i32 @VSHF_B2_SB(i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load i64, i64* %25, align 8
  %201 = load i64, i64* %26, align 8
  %202 = load i64, i64* %27, align 8
  %203 = load i64, i64* %28, align 8
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %29, align 4
  %209 = load i32, i32* %30, align 4
  %210 = load i32, i32* %31, align 4
  %211 = load i32, i32* %32, align 4
  %212 = call i32 @DPADD_SB4_SH(i64 %200, i64 %201, i64 %202, i64 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* %31, align 4
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @ST_SH2(i32 %213, i32 %214, i32* %215, i32 %216)
  %218 = load i32, i32* %30, align 4
  %219 = load i32, i32* %32, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @ST_SH2(i32 %218, i32 %219, i32* %221, i32 %222)
  %224 = load i32, i32* %10, align 4
  %225 = mul nsw i32 2, %224
  %226 = load i32*, i32** %9, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %9, align 8
  br label %59

229:                                              ; preds = %59
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
